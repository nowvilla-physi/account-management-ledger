import 'package:shared_preferences/shared_preferences.dart';
import 'package:account_management_ledger/importer.dart';

class AuthRepositoryImpl implements AuthRepository {
  /// 登録しているアカウントデータを取得する
  @override
  Future<Result<String?, Exception>> read(String key) async {
    final prefs = await SharedPreferences.getInstance();

    // キーがなければパスワードが登録されていない
    if (!prefs.containsKey(key)) {
      return const Result.success(null);
    }

    final password = prefs.getString(key);
    if (password != null) {
      return Result.success(password);
    } else {
      // 取得結果がnullの場合はエラーとする
      return const Result.failure(AppError.failedFetchPassword());
    }
  }

  /// アカウントデータを保存する
  @override
  Future<Result<String, Exception>> save(
    String key,
    String password,
  ) async {
    final prefs = await SharedPreferences.getInstance();

    try {
      // json文字列のリストを保存する
      await prefs.setString(key, password);
      return Result.success(password);
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }
}
