import 'package:account_management_ledger/importer.dart';

class HomeRepositoryImpl implements HomeRepository {
  @override
  Future<Result<List<Account>>> fetchAccounts() async {
    return Result.success(tmp());
  }

  List<Account> tmp() {
    return [
      Account("Abcd", "xxxxxx@gmail.com", "0000"),
      Account("efgh", "xxxxxx@gmail2.com", "0099"),
      Account("1234", "yyyyyy@gmail.com", "00"),
      Account("5678", "zzzzz@gmail.com", "1"),
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
