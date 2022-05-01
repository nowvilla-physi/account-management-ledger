import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'account.freezed.dart';

part 'account.g.dart';

@freezed
class Account with _$Account {
  const factory Account(
    String service,
    String id,
    String password,
  ) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
