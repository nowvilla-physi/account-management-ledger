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

  FailedRegisterAccount failedRegisterAccount() {
    return const FailedRegisterAccount();
  }

  FailedUpdateAccount failedUpdateAccount() {
    return const FailedUpdateAccount();
  }

  FailedDeleteAccount failedDeleteAccount() {
    return const FailedDeleteAccount();
  }

  FailedBackupAccount failedBackupAccount() {
    return const FailedBackupAccount();
  }

  FailedDeleteAllAccounts failedDeleteAllAccounts() {
    return const FailedDeleteAllAccounts();
  }

  NoAccountDeleteError noAccountDeleteError() {
    return const NoAccountDeleteError();
  }
}

/// @nodoc
const $AppError = _$AppErrorTearOff();

/// @nodoc
mixin _$AppError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedFetchAccount,
    required TResult Function() failedRegisterAccount,
    required TResult Function() failedUpdateAccount,
    required TResult Function() failedDeleteAccount,
    required TResult Function() failedBackupAccount,
    required TResult Function() failedDeleteAllAccounts,
    required TResult Function() noAccountDeleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailedFetchAccount value) failedFetchAccount,
    required TResult Function(FailedRegisterAccount value)
        failedRegisterAccount,
    required TResult Function(FailedUpdateAccount value) failedUpdateAccount,
    required TResult Function(FailedDeleteAccount value) failedDeleteAccount,
    required TResult Function(FailedBackupAccount value) failedBackupAccount,
    required TResult Function(FailedDeleteAllAccounts value)
        failedDeleteAllAccounts,
    required TResult Function(NoAccountDeleteError value) noAccountDeleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
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
    required TResult Function() failedRegisterAccount,
    required TResult Function() failedUpdateAccount,
    required TResult Function() failedDeleteAccount,
    required TResult Function() failedBackupAccount,
    required TResult Function() failedDeleteAllAccounts,
    required TResult Function() noAccountDeleteError,
  }) {
    return failedFetchAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
  }) {
    return failedFetchAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
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
    required TResult Function(FailedRegisterAccount value)
        failedRegisterAccount,
    required TResult Function(FailedUpdateAccount value) failedUpdateAccount,
    required TResult Function(FailedDeleteAccount value) failedDeleteAccount,
    required TResult Function(FailedBackupAccount value) failedBackupAccount,
    required TResult Function(FailedDeleteAllAccounts value)
        failedDeleteAllAccounts,
    required TResult Function(NoAccountDeleteError value) noAccountDeleteError,
  }) {
    return failedFetchAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
  }) {
    return failedFetchAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
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

/// @nodoc
abstract class $FailedRegisterAccountCopyWith<$Res> {
  factory $FailedRegisterAccountCopyWith(FailedRegisterAccount value,
          $Res Function(FailedRegisterAccount) then) =
      _$FailedRegisterAccountCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailedRegisterAccountCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res>
    implements $FailedRegisterAccountCopyWith<$Res> {
  _$FailedRegisterAccountCopyWithImpl(
      FailedRegisterAccount _value, $Res Function(FailedRegisterAccount) _then)
      : super(_value, (v) => _then(v as FailedRegisterAccount));

  @override
  FailedRegisterAccount get _value => super._value as FailedRegisterAccount;
}

/// @nodoc

class _$FailedRegisterAccount extends FailedRegisterAccount
    with DiagnosticableTreeMixin {
  const _$FailedRegisterAccount() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.failedRegisterAccount()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AppError.failedRegisterAccount'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FailedRegisterAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedFetchAccount,
    required TResult Function() failedRegisterAccount,
    required TResult Function() failedUpdateAccount,
    required TResult Function() failedDeleteAccount,
    required TResult Function() failedBackupAccount,
    required TResult Function() failedDeleteAllAccounts,
    required TResult Function() noAccountDeleteError,
  }) {
    return failedRegisterAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
  }) {
    return failedRegisterAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
    required TResult orElse(),
  }) {
    if (failedRegisterAccount != null) {
      return failedRegisterAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailedFetchAccount value) failedFetchAccount,
    required TResult Function(FailedRegisterAccount value)
        failedRegisterAccount,
    required TResult Function(FailedUpdateAccount value) failedUpdateAccount,
    required TResult Function(FailedDeleteAccount value) failedDeleteAccount,
    required TResult Function(FailedBackupAccount value) failedBackupAccount,
    required TResult Function(FailedDeleteAllAccounts value)
        failedDeleteAllAccounts,
    required TResult Function(NoAccountDeleteError value) noAccountDeleteError,
  }) {
    return failedRegisterAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
  }) {
    return failedRegisterAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
    required TResult orElse(),
  }) {
    if (failedRegisterAccount != null) {
      return failedRegisterAccount(this);
    }
    return orElse();
  }
}

abstract class FailedRegisterAccount extends AppError {
  const factory FailedRegisterAccount() = _$FailedRegisterAccount;
  const FailedRegisterAccount._() : super._();
}

/// @nodoc
abstract class $FailedUpdateAccountCopyWith<$Res> {
  factory $FailedUpdateAccountCopyWith(
          FailedUpdateAccount value, $Res Function(FailedUpdateAccount) then) =
      _$FailedUpdateAccountCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailedUpdateAccountCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res>
    implements $FailedUpdateAccountCopyWith<$Res> {
  _$FailedUpdateAccountCopyWithImpl(
      FailedUpdateAccount _value, $Res Function(FailedUpdateAccount) _then)
      : super(_value, (v) => _then(v as FailedUpdateAccount));

  @override
  FailedUpdateAccount get _value => super._value as FailedUpdateAccount;
}

/// @nodoc

class _$FailedUpdateAccount extends FailedUpdateAccount
    with DiagnosticableTreeMixin {
  const _$FailedUpdateAccount() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.failedUpdateAccount()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppError.failedUpdateAccount'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FailedUpdateAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedFetchAccount,
    required TResult Function() failedRegisterAccount,
    required TResult Function() failedUpdateAccount,
    required TResult Function() failedDeleteAccount,
    required TResult Function() failedBackupAccount,
    required TResult Function() failedDeleteAllAccounts,
    required TResult Function() noAccountDeleteError,
  }) {
    return failedUpdateAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
  }) {
    return failedUpdateAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
    required TResult orElse(),
  }) {
    if (failedUpdateAccount != null) {
      return failedUpdateAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailedFetchAccount value) failedFetchAccount,
    required TResult Function(FailedRegisterAccount value)
        failedRegisterAccount,
    required TResult Function(FailedUpdateAccount value) failedUpdateAccount,
    required TResult Function(FailedDeleteAccount value) failedDeleteAccount,
    required TResult Function(FailedBackupAccount value) failedBackupAccount,
    required TResult Function(FailedDeleteAllAccounts value)
        failedDeleteAllAccounts,
    required TResult Function(NoAccountDeleteError value) noAccountDeleteError,
  }) {
    return failedUpdateAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
  }) {
    return failedUpdateAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
    required TResult orElse(),
  }) {
    if (failedUpdateAccount != null) {
      return failedUpdateAccount(this);
    }
    return orElse();
  }
}

abstract class FailedUpdateAccount extends AppError {
  const factory FailedUpdateAccount() = _$FailedUpdateAccount;
  const FailedUpdateAccount._() : super._();
}

/// @nodoc
abstract class $FailedDeleteAccountCopyWith<$Res> {
  factory $FailedDeleteAccountCopyWith(
          FailedDeleteAccount value, $Res Function(FailedDeleteAccount) then) =
      _$FailedDeleteAccountCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailedDeleteAccountCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res>
    implements $FailedDeleteAccountCopyWith<$Res> {
  _$FailedDeleteAccountCopyWithImpl(
      FailedDeleteAccount _value, $Res Function(FailedDeleteAccount) _then)
      : super(_value, (v) => _then(v as FailedDeleteAccount));

  @override
  FailedDeleteAccount get _value => super._value as FailedDeleteAccount;
}

/// @nodoc

class _$FailedDeleteAccount extends FailedDeleteAccount
    with DiagnosticableTreeMixin {
  const _$FailedDeleteAccount() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.failedDeleteAccount()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppError.failedDeleteAccount'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FailedDeleteAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedFetchAccount,
    required TResult Function() failedRegisterAccount,
    required TResult Function() failedUpdateAccount,
    required TResult Function() failedDeleteAccount,
    required TResult Function() failedBackupAccount,
    required TResult Function() failedDeleteAllAccounts,
    required TResult Function() noAccountDeleteError,
  }) {
    return failedDeleteAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
  }) {
    return failedDeleteAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
    required TResult orElse(),
  }) {
    if (failedDeleteAccount != null) {
      return failedDeleteAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailedFetchAccount value) failedFetchAccount,
    required TResult Function(FailedRegisterAccount value)
        failedRegisterAccount,
    required TResult Function(FailedUpdateAccount value) failedUpdateAccount,
    required TResult Function(FailedDeleteAccount value) failedDeleteAccount,
    required TResult Function(FailedBackupAccount value) failedBackupAccount,
    required TResult Function(FailedDeleteAllAccounts value)
        failedDeleteAllAccounts,
    required TResult Function(NoAccountDeleteError value) noAccountDeleteError,
  }) {
    return failedDeleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
  }) {
    return failedDeleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
    required TResult orElse(),
  }) {
    if (failedDeleteAccount != null) {
      return failedDeleteAccount(this);
    }
    return orElse();
  }
}

abstract class FailedDeleteAccount extends AppError {
  const factory FailedDeleteAccount() = _$FailedDeleteAccount;
  const FailedDeleteAccount._() : super._();
}

/// @nodoc
abstract class $FailedBackupAccountCopyWith<$Res> {
  factory $FailedBackupAccountCopyWith(
          FailedBackupAccount value, $Res Function(FailedBackupAccount) then) =
      _$FailedBackupAccountCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailedBackupAccountCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res>
    implements $FailedBackupAccountCopyWith<$Res> {
  _$FailedBackupAccountCopyWithImpl(
      FailedBackupAccount _value, $Res Function(FailedBackupAccount) _then)
      : super(_value, (v) => _then(v as FailedBackupAccount));

  @override
  FailedBackupAccount get _value => super._value as FailedBackupAccount;
}

/// @nodoc

class _$FailedBackupAccount extends FailedBackupAccount
    with DiagnosticableTreeMixin {
  const _$FailedBackupAccount() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.failedBackupAccount()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppError.failedBackupAccount'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FailedBackupAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedFetchAccount,
    required TResult Function() failedRegisterAccount,
    required TResult Function() failedUpdateAccount,
    required TResult Function() failedDeleteAccount,
    required TResult Function() failedBackupAccount,
    required TResult Function() failedDeleteAllAccounts,
    required TResult Function() noAccountDeleteError,
  }) {
    return failedBackupAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
  }) {
    return failedBackupAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
    required TResult orElse(),
  }) {
    if (failedBackupAccount != null) {
      return failedBackupAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailedFetchAccount value) failedFetchAccount,
    required TResult Function(FailedRegisterAccount value)
        failedRegisterAccount,
    required TResult Function(FailedUpdateAccount value) failedUpdateAccount,
    required TResult Function(FailedDeleteAccount value) failedDeleteAccount,
    required TResult Function(FailedBackupAccount value) failedBackupAccount,
    required TResult Function(FailedDeleteAllAccounts value)
        failedDeleteAllAccounts,
    required TResult Function(NoAccountDeleteError value) noAccountDeleteError,
  }) {
    return failedBackupAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
  }) {
    return failedBackupAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
    required TResult orElse(),
  }) {
    if (failedBackupAccount != null) {
      return failedBackupAccount(this);
    }
    return orElse();
  }
}

abstract class FailedBackupAccount extends AppError {
  const factory FailedBackupAccount() = _$FailedBackupAccount;
  const FailedBackupAccount._() : super._();
}

/// @nodoc
abstract class $FailedDeleteAllAccountsCopyWith<$Res> {
  factory $FailedDeleteAllAccountsCopyWith(FailedDeleteAllAccounts value,
          $Res Function(FailedDeleteAllAccounts) then) =
      _$FailedDeleteAllAccountsCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailedDeleteAllAccountsCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res>
    implements $FailedDeleteAllAccountsCopyWith<$Res> {
  _$FailedDeleteAllAccountsCopyWithImpl(FailedDeleteAllAccounts _value,
      $Res Function(FailedDeleteAllAccounts) _then)
      : super(_value, (v) => _then(v as FailedDeleteAllAccounts));

  @override
  FailedDeleteAllAccounts get _value => super._value as FailedDeleteAllAccounts;
}

/// @nodoc

class _$FailedDeleteAllAccounts extends FailedDeleteAllAccounts
    with DiagnosticableTreeMixin {
  const _$FailedDeleteAllAccounts() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.failedDeleteAllAccounts()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AppError.failedDeleteAllAccounts'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FailedDeleteAllAccounts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedFetchAccount,
    required TResult Function() failedRegisterAccount,
    required TResult Function() failedUpdateAccount,
    required TResult Function() failedDeleteAccount,
    required TResult Function() failedBackupAccount,
    required TResult Function() failedDeleteAllAccounts,
    required TResult Function() noAccountDeleteError,
  }) {
    return failedDeleteAllAccounts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
  }) {
    return failedDeleteAllAccounts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
    required TResult orElse(),
  }) {
    if (failedDeleteAllAccounts != null) {
      return failedDeleteAllAccounts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailedFetchAccount value) failedFetchAccount,
    required TResult Function(FailedRegisterAccount value)
        failedRegisterAccount,
    required TResult Function(FailedUpdateAccount value) failedUpdateAccount,
    required TResult Function(FailedDeleteAccount value) failedDeleteAccount,
    required TResult Function(FailedBackupAccount value) failedBackupAccount,
    required TResult Function(FailedDeleteAllAccounts value)
        failedDeleteAllAccounts,
    required TResult Function(NoAccountDeleteError value) noAccountDeleteError,
  }) {
    return failedDeleteAllAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
  }) {
    return failedDeleteAllAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
    required TResult orElse(),
  }) {
    if (failedDeleteAllAccounts != null) {
      return failedDeleteAllAccounts(this);
    }
    return orElse();
  }
}

abstract class FailedDeleteAllAccounts extends AppError {
  const factory FailedDeleteAllAccounts() = _$FailedDeleteAllAccounts;
  const FailedDeleteAllAccounts._() : super._();
}

/// @nodoc
abstract class $NoAccountDeleteErrorCopyWith<$Res> {
  factory $NoAccountDeleteErrorCopyWith(NoAccountDeleteError value,
          $Res Function(NoAccountDeleteError) then) =
      _$NoAccountDeleteErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoAccountDeleteErrorCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res>
    implements $NoAccountDeleteErrorCopyWith<$Res> {
  _$NoAccountDeleteErrorCopyWithImpl(
      NoAccountDeleteError _value, $Res Function(NoAccountDeleteError) _then)
      : super(_value, (v) => _then(v as NoAccountDeleteError));

  @override
  NoAccountDeleteError get _value => super._value as NoAccountDeleteError;
}

/// @nodoc

class _$NoAccountDeleteError extends NoAccountDeleteError
    with DiagnosticableTreeMixin {
  const _$NoAccountDeleteError() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.noAccountDeleteError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AppError.noAccountDeleteError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoAccountDeleteError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failedFetchAccount,
    required TResult Function() failedRegisterAccount,
    required TResult Function() failedUpdateAccount,
    required TResult Function() failedDeleteAccount,
    required TResult Function() failedBackupAccount,
    required TResult Function() failedDeleteAllAccounts,
    required TResult Function() noAccountDeleteError,
  }) {
    return noAccountDeleteError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
  }) {
    return noAccountDeleteError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failedFetchAccount,
    TResult Function()? failedRegisterAccount,
    TResult Function()? failedUpdateAccount,
    TResult Function()? failedDeleteAccount,
    TResult Function()? failedBackupAccount,
    TResult Function()? failedDeleteAllAccounts,
    TResult Function()? noAccountDeleteError,
    required TResult orElse(),
  }) {
    if (noAccountDeleteError != null) {
      return noAccountDeleteError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailedFetchAccount value) failedFetchAccount,
    required TResult Function(FailedRegisterAccount value)
        failedRegisterAccount,
    required TResult Function(FailedUpdateAccount value) failedUpdateAccount,
    required TResult Function(FailedDeleteAccount value) failedDeleteAccount,
    required TResult Function(FailedBackupAccount value) failedBackupAccount,
    required TResult Function(FailedDeleteAllAccounts value)
        failedDeleteAllAccounts,
    required TResult Function(NoAccountDeleteError value) noAccountDeleteError,
  }) {
    return noAccountDeleteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
  }) {
    return noAccountDeleteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedFetchAccount value)? failedFetchAccount,
    TResult Function(FailedRegisterAccount value)? failedRegisterAccount,
    TResult Function(FailedUpdateAccount value)? failedUpdateAccount,
    TResult Function(FailedDeleteAccount value)? failedDeleteAccount,
    TResult Function(FailedBackupAccount value)? failedBackupAccount,
    TResult Function(FailedDeleteAllAccounts value)? failedDeleteAllAccounts,
    TResult Function(NoAccountDeleteError value)? noAccountDeleteError,
    required TResult orElse(),
  }) {
    if (noAccountDeleteError != null) {
      return noAccountDeleteError(this);
    }
    return orElse();
  }
}

abstract class NoAccountDeleteError extends AppError {
  const factory NoAccountDeleteError() = _$NoAccountDeleteError;
  const NoAccountDeleteError._() : super._();
}
