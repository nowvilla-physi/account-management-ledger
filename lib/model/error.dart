import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:account_management_ledger/importer.dart';

part 'error.freezed.dart';

@freezed
abstract class AppError with _$AppError {
  const factory AppError.failedFetchAccount() = FailedFetchAccount;

  const AppError._();

  String get message {
    return when(
      failedFetchAccount: () => Strings.failedFetchAccount,
    );
  }
}
