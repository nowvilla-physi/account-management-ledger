import 'package:account_management_ledger/importer.dart';

abstract class HomeRepository {
  Future<Result<List<Account>>> fetchAccounts();

  Future<Result<Account>> addAccount(Account account);

  Future<Result<Account>> updateAccount(Account account);

  Future<Result<Account>> deleteAccount(Account account);
}
