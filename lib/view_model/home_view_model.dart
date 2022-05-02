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
  late final List<Account> allAccounts;

  late final _logger = Logger(printer: AppLogPrinter('HomeViewModel'));

  /// アカウントの一覧を取得する
  Future<void> findAccounts() async {
    final result = await _homeRepository.fetchAccounts();

    result.when(
      success: (List<Account> accounts) {
        // 全アカウントを保持する
        allAccounts = accounts;
        if (accounts.isEmpty) {
          state = const HomeUiState.noAccount();
        } else {
          state = HomeUiState.success(accounts);
        }
      },
      failure: (AppError error) {
        state = HomeUiState.failure(error);
      },
    );
  }

  /// 掲示板を追加する
  Future<void> addHome() async {}

  /// 検索によって表示をフィルターする
  Future<void> searchAccounts(String searchText) async {
    state.maybeWhen(
      success: (List<Account> accounts) {
        // 検索文字列が空の場合は全てのアカウントを表示する
        if (searchText.trim().isEmpty) {
          _logger.d('SearchText is empty.');
          state = HomeUiState.success(allAccounts);
          return;
        }

        // 検索文字列で検索にマッチしたアカウントを表示する
        final filteredAccounts = allAccounts.where(
          (Account account) {
            return account.service.contains(searchText) ||
                account.id.contains(searchText) ||
                account.password.contains(searchText);
          },
        ).toList();
        _logger.d('Searched accounts is $filteredAccounts .');
        state = HomeUiState.success(filteredAccounts);
      },
      orElse: () {
        // nop
      },
    );
  }
}
