import 'package:account_management_ledger/importer.dart';

abstract class HomeRepository {
  Future<Result<List<Account>, Exception>> read();

  Future<Result<List<Account>, Exception>> save(List<Account> accounts);
}
