import 'package:account_management_ledger/importer.dart';

abstract class HomeRepository {
  Future<Result<List<Account>, Exception>> read();

  Future<Result<List<Account>, Exception>> save(List<Account> accounts);

  Future<Result<bool, Exception>> backup();

  Future<Result<List<Account>, Exception>> restore();

  Future<Result<bool, Exception>> clearAllAccounts();
}
