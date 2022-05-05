import 'package:account_management_ledger/importer.dart';

abstract class HomeRepository {
  Future<Result<List<Account>, Exception>> read(String key);

  Future<Result<List<Account>, Exception>> save(
    String key,
    List<Account> accounts,
  );

  Future<Result<bool, Exception>> backup(
    String key,
    List<Account> accounts,
  );

  Future<Result<List<Account>, Exception>> restore(String key);

  Future<Result<bool, Exception>> clearAllAccounts(
    String key,
    String backupKey,
  );
}
