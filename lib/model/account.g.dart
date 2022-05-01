// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      json['service'] as String,
      json['id'] as String,
      json['password'] as String,
      json['memo'] as String,
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'service': instance.service,
      'id': instance.id,
      'password': instance.password,
      'memo': instance.memo,
    };
