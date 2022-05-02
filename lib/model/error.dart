import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:account_management_ledger/importer.dart';

part 'error.freezed.dart';

@freezed
abstract class AppError with _$AppError implements Exception {
  const factory AppError.failedFetchAccount() = FailedFetchAccount;

  const factory AppError.failedRegisterAccount() = FailedRegisterAccount;

  const factory AppError.failedUpdateAccount() = FailedUpdateAccount;

  const factory AppError.failedDeleteAccount() = FailedDeleteAccount;

  const AppError._();

  String get message {
    return when(
      failedFetchAccount: () => Strings.failedFetchAccount,
      failedRegisterAccount: () => Strings.failedRegisterAccount,
      failedUpdateAccount: () => Strings.failedUpdateAccount,
      failedDeleteAccount: () => Strings.failedDeleteAccount,
    );
  }
}
