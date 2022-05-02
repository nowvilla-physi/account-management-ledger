import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'error.freezed.dart';

@freezed
abstract class AppError with _$AppError {
  const factory AppError.emailAlreadyInUse() = EmailAlreadyInUse;

  const AppError._();

  String get message {
    return when(
      emailAlreadyInUse: () => 'エラーです',
    );
  }
}
