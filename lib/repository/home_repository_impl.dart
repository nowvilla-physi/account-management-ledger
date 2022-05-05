import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:account_management_ledger/importer.dart';

class HomeRepositoryImpl implements HomeRepository {
  /// 登録しているアカウントデータを取得する
  @override
  Future<Result<List<Account>, Exception>> read(String key) async {
    final prefs = await SharedPreferences.getInstance();

    // キーがなければアカウントが登録されていない
    if (!prefs.containsKey(key)) {
      return const Result.success([]);
    }

    final jsons = prefs.getStringList(key);
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

  /// アカウントデータを保存する
  @override
  Future<Result<List<Account>, Exception>> save(
    String key,
    List<Account> accounts,
  ) async {
    final prefs = await SharedPreferences.getInstance();

    try {
      // json文字列のリストを生成する
      final jsons = accounts
          .map((Account account) => jsonEncode(account.toJson()))
          .toList();

      // json文字列のリストを保存する
      await prefs.setStringList(key, jsons);
      return Result.success(accounts);
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }

  /// アカウントデータを全て削除する
  @override
  Future<Result<bool, Exception>> clearAllAccounts(
    String key,
    String backupKey,
  ) async {
    final prefs = await SharedPreferences.getInstance();

    // キーがなければアカウントが登録されていない
    if (!prefs.containsKey(key) && !prefs.containsKey(backupKey)) {
      return const Result.success(false);
    }

    try {
      // アカウントデータの削除
      await prefs.remove(key);
      // バクアップデータの削除
      await prefs.remove(backupKey);
      return const Result.success(true);
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }

  /// アカウントデータのバックアップを取る
  @override
  Future<Result<bool, Exception>> backup(
    String key,
    List<Account> accounts,
  ) async {
    final result = await save(key, accounts);

    return result.map(
      success: (Success<List<Account>, Exception> value) {
        return const Result.success(true);
      },
      failure: (Failure<List<Account>, Exception> value) {
        return const Result.failure(AppError.failedFetchAccount());
      },
    );
  }

  @override
  Future<Result<List<Account>, Exception>> restore(String key) {
    // TODO: implement restore
    throw UnimplementedError();
  }
}
