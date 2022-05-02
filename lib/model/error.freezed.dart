// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppErrorTearOff {
  const _$AppErrorTearOff();

  FailedFetchAccount failedFetchAccount() {
    return const FailedFetchAccount();
  }
}

/// @nodoc
const $AppError = _$AppErrorTearOff();

/// @nodoc
mixin _$AppError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedFetchAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailedFetchAccount value) failedFetchAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res> implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  final AppError _value;
  // ignore: unused_field
  final $Res Function(AppError) _then;
}

/// @nodoc
abstract class $FailedFetchAccountCopyWith<$Res> {
  factory $FailedFetchAccountCopyWith(
          FailedFetchAccount value, $Res Function(FailedFetchAccount) then) =
      _$FailedFetchAccountCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailedFetchAccountCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res>
    implements $FailedFetchAccountCopyWith<$Res> {
  _$FailedFetchAccountCopyWithImpl(
      FailedFetchAccount _value, $Res Function(FailedFetchAccount) _then)
      : super(_value, (v) => _then(v as FailedFetchAccount));

  @override
  FailedFetchAccount get _value => super._value as FailedFetchAccount;
}

/// @nodoc

class _$FailedFetchAccount extends FailedFetchAccount
    with DiagnosticableTreeMixin {
  const _$FailedFetchAccount() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.failedFetchAccount()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppError.failedFetchAccount'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FailedFetchAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedFetchAccount,
  }) {
    return failedFetchAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
  }) {
    return failedFetchAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    required TResult orElse(),
  }) {
    if (failedFetchAccount != null) {
      return failedFetchAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailedFetchAccount value) failedFetchAccount,
  }) {
    return failedFetchAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
  }) {
    return failedFetchAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    required TResult orElse(),
  }) {
    if (failedFetchAccount != null) {
      return failedFetchAccount(this);
    }
    return orElse();
  }
}

abstract class FailedFetchAccount extends AppError {
  const factory FailedFetchAccount() = _$FailedFetchAccount;
  const FailedFetchAccount._() : super._();
}
