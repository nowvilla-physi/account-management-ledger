import 'package:account_management_ledger/importer.dart';

abstract class AuthRepository {
  Future<Result<String?, Exception>> read(String key);

  Future<Result<String, Exception>> save(
    String key,
    String password,
  );
}
