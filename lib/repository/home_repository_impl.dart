import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:account_management_ledger/importer.dart';

class HomeRepositoryImpl implements HomeRepository {
  static const prefsKey = 'accountsKey';

  @override
  Future<Result<List<Account>, Exception>> read() async {
    final prefs = await SharedPreferences.getInstance();

    // キーがなければアカウントが登録されていない
    if (!prefs.containsKey(prefsKey)) {
      return const Result.success([]);
    }

    final jsons = prefs.getStringList(prefsKey);
    if (jsons != null) {
      try {
        // json文字列 -> Map<String, dynamic> -> Account と変換する
        final accounts = jsons
            .map((String json) => Account.fromJson(jsonDecode(json)))
            .toList();
        return Result.success(accounts);
      } on Exception catch (e) {
        return Result.failure(e);
      }
    } else {
      // 取得結果がnullの場合はエラーとする
      return const Result.failure(AppError.failedFetchAccount());
    }
  }

  @override
  Future<Result<List<Account>, Exception>> save(List<Account> accounts) async {
    final prefs = await SharedPreferences.getInstance();

    try {
      // json文字列のリストを生成する
      final jsons = accounts
          .map((Account account) => jsonEncode(account.toJson()))
          .toList();

      // json文字列のリストを保存する
      await prefs.setStringList(prefsKey, jsons);
      return Result.success(accounts);
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }

  /// アカウントデータを全て削除する
  @override
  Future<Result<bool, Exception>> clearAllAccounts() async {
    final prefs = await SharedPreferences.getInstance();

    // キーがなければアカウントが登録されていない
    if (!prefs.containsKey(prefsKey)) {
      return const Result.success(false);
    }

    try {
      await prefs.remove(prefsKey);
      return const Result.success(true);
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }

  @override
  Future<Result<List<Account>, Exception>> backup() {
    // TODO: implement backup
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Account>, Exception>> restore() {
    // TODO: implement restore
    throw UnimplementedError();
  }
}
