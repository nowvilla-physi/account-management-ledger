import 'package:shared_preferences/shared_preferences.dart';
import 'package:account_management_ledger/importer.dart';

class HomeRepositoryImpl implements HomeRepository {
  static const prefsKey = 'accountsKey';

  @override
  Future<Result<List<Account>>> fetchAccounts() async {
    final prefs = await SharedPreferences.getInstance();

    // キーがなければアカウントが登録されていない
    if (!prefs.containsKey(prefsKey)) {
      return const Result.success([]);
    }

    final json = prefs.getString(prefsKey);
    if (json != null) {
      // TODO json convert
      return Result.success(tmp());
    } else {
      // 取得結果がnullの場合はエラーとする
      return const Result.failure(AppError.failedFetchAccount());
    }
  }

  List<Account> tmp() {
    return [
      Account("no1", "Abcd", "xxxxxx@gmail.com", "0000"),
      Account("no2", "efgh", "xxxxxx@gmail2.com", "0099"),
      Account("no3", "1234", "yyyyyy@gmail.com", "00"),
      Account("no4", "5678", "zzzzz@gmail.com", "1"),
    ];
  }

  @override
  Future<Result<Account>> addAccount(Account account) {
    // TODO: implement addAccount
    throw UnimplementedError();
  }

  @override
  Future<Result<Account>> deleteAccount(Account account) {
    // TODO: implement deleteAccount
    throw UnimplementedError();
  }

  @override
  Future<Result<Account>> updateAccount(Account account) {
    // TODO: implement updateAccount
    throw UnimplementedError();
  }
}
