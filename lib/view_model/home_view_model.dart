import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:account_management_ledger/importer.dart';

class HomeViewModel extends StateNotifier<HomeUiState> {
  HomeViewModel({
    required HomeRepository homeRepository,
  })  : _homeRepository = homeRepository,
        super(const HomeUiState.init());

  final HomeRepository _homeRepository;
  final _requiredValidator = RequiredValidator();

  /// 全アカウントを保持する
  List<Account> _allAccounts = [];

  /// ロガー
  late final _logger = Logger(printer: AppLogPrinter('HomeViewModel'));

  /// アカウントの一覧を取得する
  Future<void> findAccounts(String key) async {
    final result = await _homeRepository.read(key);

    result.when(
      success: (List<Account> accounts) {
        // 全アカウントを保持する
        _allAccounts = accounts;
        if (accounts.isEmpty) {
          state = const HomeUiState.noAccount();
        } else {
          state = HomeUiState.success(accounts);
        }
      },
      failure: (Exception e) {
        state = HomeUiState.failure(e);
      },
    );
  }

  /// アカウントを追加する
  Future<void> addAccount(
    String key,
    String uuid,
    String service,
    String id,
    String password,
  ) async {
    final account = Account(uuid, service, id, password);
    final newAccounts = [..._allAccounts, account];
    final result = await _homeRepository.save(key, newAccounts);

    result.when(
      success: (List<Account> accounts) {
        _logger.d('Account successfully registered. $account');
        _allAccounts = accounts;
        state = HomeUiState.success(accounts);
      },
      failure: (Exception e) {
        _logger.e('Failed to register account. $e');
        state = const HomeUiState.failure(AppError.failedRegisterAccount());
      },
    );
  }

  /// アカウントを更新する
  Future<void> updateAccount(
    String key,
    String uuid,
    String service,
    String id,
    String password,
  ) async {
    // 更新対象のアカウントを新しいアカウントに変換する
    final updatedAccount = Account(uuid, service, id, password);
    final newAccounts = _allAccounts.map((Account account) {
      if (account.uuid == uuid) {
        return updatedAccount;
      } else {
        return account;
      }
    }).toList();
    final result = await _homeRepository.save(key, newAccounts);

    result.when(
      success: (List<Account> accounts) {
        _logger.d('Account successfully updated. $updatedAccount');
        _allAccounts = accounts;
        state = HomeUiState.success(accounts);
      },
      failure: (Exception e) {
        _logger.e('Failed to update account. $e');
        state = const HomeUiState.failure(AppError.failedUpdateAccount());
      },
    );
  }

  /// アカウントを削除する
  Future<void> deleteAccount(String key, String uuid) async {
    // 削除対象のuuid以外でフィルターする
    final newAccounts =
        _allAccounts.where((Account account) => account.uuid != uuid).toList();
    final result = await _homeRepository.save(key, newAccounts);

    result.when(
      success: (List<Account> accounts) {
        _logger.d('Account successfully deleted.');
        _allAccounts = accounts;
        if (accounts.isEmpty) {
          state = const HomeUiState.noAccount();
        } else {
          state = HomeUiState.success(accounts);
        }
      },
      failure: (Exception e) {
        _logger.e('Failed to delete account. $e');
        state = const HomeUiState.failure(AppError.failedDeleteAccount());
      },
    );
  }

  /// 検索によって表示をフィルターする
  void searchAccounts(String searchText) {
    state.maybeWhen(
      success: (List<Account> accounts) {
        // 検索文字列が空の場合は全てのアカウントを表示する
        if (searchText.trim().isEmpty) {
          _logger.d('SearchText is empty.');
          state = HomeUiState.success(_allAccounts);
          return;
        }

        // 検索文字列で検索にマッチしたアカウントを表示する
        final filteredAccounts = _allAccounts.where(
          (Account account) {
            return account.service.contains(searchText) ||
                account.id.contains(searchText) ||
                account.password.contains(searchText);
          },
        ).toList();
        state = HomeUiState.success(filteredAccounts);
        _logger.d('Searched accounts: $filteredAccounts');
      },
      orElse: () {
        // nop
      },
    );
  }

  /// 追加時のバリデーションの判定をする
  Result<bool, String> validateWhenAdd(
    String service,
    String id,
    String password,
  ) {
    final results = <String>[service, id, password]
        .map((value) => _requiredValidator.validate(value))
        .where((isValid) => !isValid)
        .toList();

    return results.isEmpty
        ? const Result.success(true)
        : Result.failure(_requiredValidator.getMessage());
  }

  /// 更新時のバリデーションの判定をする
  Result<bool, String> validateWhenUpdate(
    String service,
    String id,
    String password,
    Account preAccount,
  ) {
    // 必須チェックを行う
    return validateWhenAdd(service, id, password).when(
      failure: (String message) {
        return Result.failure(message);
      },
      success: (bool isValid) {
        String? message;
        final isValidList = <bool>[];
        final values = <String>[service, id, password];
        final preValues = <String>[
          preAccount.service,
          preAccount.id,
          preAccount.password
        ];

        // 更新前と同じ文字列かチェックする
        for (final pairs in IterableZip([preValues, values])) {
          final equalValidator = EqualValidator(pairs[0]);
          final isValid = equalValidator.validate(pairs[1]);
          if (!isValid) {
            message ??= equalValidator.getMessage();
          }
          isValidList.add(isValid);
        }

        return isValidList.contains(true)
            ? const Result.success(true)
            : Result.failure(message ?? '');
      },
    );
  }

  /// アカウントデータのバックアップを取る
  Future<void> backup(String key) async {
    final newAccounts = [..._allAccounts];
    final result = await _homeRepository.backup(key, newAccounts);

    result.when(
      success: (bool value) {
        _logger.d('Backup was successful.');
      },
      failure: (Exception e) {
        _logger.e('Failed to backup account. $e');
        state = HomeUiState.failure(e);
      },
    );
  }

  /// バックアップから復旧する
  Future<void> restore(String key) async {
    final result = await _homeRepository.restore(key);

    result.when(
      success: (List<Account> accounts) {
        if (accounts.isEmpty) {
          _logger.e('Failed to restore account.');
          state = const HomeUiState.failure(AppError.noAccountDeleteError());
        } else {
          _logger.d('Account successfully restored.');
          final allData = _allAccounts + accounts;

          // 現在のアカウントと復旧したデータを結合する
          final uniqueAccounts = allData
              .map((Account account) => account.uuid)
              .toSet()
              .map((String uuid) => _findAccountByUuid(uuid, allData))
              .where((Account? account) => account != null)
              .toList()
              .cast<Account>();
          _allAccounts = uniqueAccounts;
          state = HomeUiState.success(uniqueAccounts);
        }
      },
      failure: (Exception e) {
        _logger.e('Failed to restore account. $e');
        state = HomeUiState.failure(e);
      },
    );
  }

  /// アカウントを全て削除する
  Future<void> clearAllAccounts(String key, String backupKey) async {
    state = const HomeUiState.loading();

    final result = await _homeRepository.clearAllAccounts(key, backupKey);
    result.when(
      success: (bool isCleared) {
        if (isCleared) {
          /// 全てのアカウントの削除に成功した
          _logger.d('All accounts and backup data successfully deleted.');
          _allAccounts = [];
          state = const HomeUiState.noAccount();
        } else {
          /// 登録しているアカウントデータがなかった
          _logger.d('Not exist registered accounts.');
          state = const HomeUiState.failure(AppError.noAccountDeleteError());
        }
      },
      failure: (Exception e) {
        _logger.e('Failed to delete all accounts or backup data. $e');
        state = const HomeUiState.failure(AppError.failedDeleteAllAccounts());
      },
    );
  }

  Account? _findAccountByUuid(String uuid, List<Account> accounts) {
    return accounts.firstWhereOrNull((Account account) => account.uuid == uuid);
  }
}
