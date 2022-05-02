import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:account_management_ledger/importer.dart';

class HomeViewModel extends StateNotifier<HomeUiState> {
  HomeViewModel({
    required HomeRepository homeRepository,
  })  : _homeRepository = homeRepository,
        super(const HomeUiState.init());

  final HomeRepository _homeRepository;

  /// 全アカウント
  List<Account> _allAccounts = [];

  /// ロガー
  late final _logger = Logger(printer: AppLogPrinter('HomeViewModel'));

  /// アカウントの一覧を取得する
  Future<void> findAccounts() async {
    final result = await _homeRepository.read();

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
    String uuid,
    String service,
    String id,
    String password,
  ) async {
    final account = Account(uuid, service, id, password);
    final newAccounts = [..._allAccounts, account];
    final result = await _homeRepository.save(newAccounts);

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
    final result = await _homeRepository.save(newAccounts);

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
  Future<void> deleteAccount(String uuid) async {
    // 削除対象のuuid以外でフィルターする
    final newAccounts =
        _allAccounts.where((Account account) => account.uuid != uuid).toList();
    final result = await _homeRepository.save(newAccounts);

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
  Future<void> searchAccounts(String searchText) async {
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
}
