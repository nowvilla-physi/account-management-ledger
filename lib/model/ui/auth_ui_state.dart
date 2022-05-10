import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_ui_state.freezed.dart';

@freezed
abstract class AuthUiState<T> with _$AuthUiState<T> {
  const factory AuthUiState.init() = _Init;

  const factory AuthUiState.loading() = _Loading;

  const factory AuthUiState.notRegister() = _NotRegister;

  const factory AuthUiState.success() = _Success;

  const factory AuthUiState.successRegister() = _SuccessRegister;

  const factory AuthUiState.failure(Exception e) = _Failure;
}
