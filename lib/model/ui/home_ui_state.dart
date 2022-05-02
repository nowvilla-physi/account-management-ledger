import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:account_management_ledger/importer.dart';

part 'home_ui_state.freezed.dart';

@freezed
abstract class HomeUiState<T> with _$HomeUiState<T> {
  const factory HomeUiState.init() = _Init;

  const factory HomeUiState.loading() = _Loading;

  const factory HomeUiState.noAccount() = _NoAccount;

  const factory HomeUiState.success(List<Account> accounts) = _Success;

  const factory HomeUiState.failure(AppError error) = _Failure;
}
