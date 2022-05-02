// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeUiStateTearOff {
  const _$HomeUiStateTearOff();

  _Init<T> init<T>() {
    return _Init<T>();
  }

  _Loading<T> loading<T>() {
    return _Loading<T>();
  }

  _NoAccount<T> noAccount<T>() {
    return _NoAccount<T>();
  }

  _Success<T> success<T>(List<Account> accounts) {
    return _Success<T>(
      accounts,
    );
  }

  _Failure<T> failure<T>(AppError error) {
    return _Failure<T>(
      error,
    );
  }
}

/// @nodoc
const $HomeUiState = _$HomeUiStateTearOff();

/// @nodoc
mixin _$HomeUiState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() noAccount,
    required TResult Function(List<Account> accounts) success,
    required TResult Function(AppError error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? noAccount,
    TResult Function(List<Account> accounts)? success,
    TResult Function(AppError error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? noAccount,
    TResult Function(List<Account> accounts)? success,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T> value) init,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_NoAccount<T> value) noAccount,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_NoAccount<T> value)? noAccount,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_NoAccount<T> value)? noAccount,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUiStateCopyWith<T, $Res> {
  factory $HomeUiStateCopyWith(
          HomeUiState<T> value, $Res Function(HomeUiState<T>) then) =
      _$HomeUiStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$HomeUiStateCopyWithImpl<T, $Res>
    implements $HomeUiStateCopyWith<T, $Res> {
  _$HomeUiStateCopyWithImpl(this._value, this._then);

  final HomeUiState<T> _value;
  // ignore: unused_field
  final $Res Function(HomeUiState<T>) _then;
}

/// @nodoc
abstract class _$InitCopyWith<T, $Res> {
  factory _$InitCopyWith(_Init<T> value, $Res Function(_Init<T>) then) =
      __$InitCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InitCopyWithImpl<T, $Res> extends _$HomeUiStateCopyWithImpl<T, $Res>
    implements _$InitCopyWith<T, $Res> {
  __$InitCopyWithImpl(_Init<T> _value, $Res Function(_Init<T>) _then)
      : super(_value, (v) => _then(v as _Init<T>));

  @override
  _Init<T> get _value => super._value as _Init<T>;
}

/// @nodoc

class _$_Init<T> with DiagnosticableTreeMixin implements _Init<T> {
  const _$_Init();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeUiState<$T>.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeUiState<$T>.init'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Init<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() noAccount,
    required TResult Function(List<Account> accounts) success,
    required TResult Function(AppError error) failure,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? noAccount,
    TResult Function(List<Account> accounts)? success,
    TResult Function(AppError error)? failure,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? noAccount,
    TResult Function(List<Account> accounts)? success,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T> value) init,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_NoAccount<T> value) noAccount,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_NoAccount<T> value)? noAccount,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_NoAccount<T> value)? noAccount,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init<T> implements HomeUiState<T> {
  const factory _Init() = _$_Init<T>;
}

/// @nodoc
abstract class _$LoadingCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<T, $Res> extends _$HomeUiStateCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;
}

/// @nodoc

class _$_Loading<T> with DiagnosticableTreeMixin implements _Loading<T> {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeUiState<$T>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeUiState<$T>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() noAccount,
    required TResult Function(List<Account> accounts) success,
    required TResult Function(AppError error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? noAccount,
    TResult Function(List<Account> accounts)? success,
    TResult Function(AppError error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? noAccount,
    TResult Function(List<Account> accounts)? success,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T> value) init,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_NoAccount<T> value) noAccount,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_NoAccount<T> value)? noAccount,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_NoAccount<T> value)? noAccount,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements HomeUiState<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$NoAccountCopyWith<T, $Res> {
  factory _$NoAccountCopyWith(
          _NoAccount<T> value, $Res Function(_NoAccount<T>) then) =
      __$NoAccountCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$NoAccountCopyWithImpl<T, $Res>
    extends _$HomeUiStateCopyWithImpl<T, $Res>
    implements _$NoAccountCopyWith<T, $Res> {
  __$NoAccountCopyWithImpl(
      _NoAccount<T> _value, $Res Function(_NoAccount<T>) _then)
      : super(_value, (v) => _then(v as _NoAccount<T>));

  @override
  _NoAccount<T> get _value => super._value as _NoAccount<T>;
}

/// @nodoc

class _$_NoAccount<T> with DiagnosticableTreeMixin implements _NoAccount<T> {
  const _$_NoAccount();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeUiState<$T>.noAccount()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeUiState<$T>.noAccount'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoAccount<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() noAccount,
    required TResult Function(List<Account> accounts) success,
    required TResult Function(AppError error) failure,
  }) {
    return noAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? noAccount,
    TResult Function(List<Account> accounts)? success,
    TResult Function(AppError error)? failure,
  }) {
    return noAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? noAccount,
    TResult Function(List<Account> accounts)? success,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) {
    if (noAccount != null) {
      return noAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T> value) init,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_NoAccount<T> value) noAccount,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return noAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_NoAccount<T> value)? noAccount,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
  }) {
    return noAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_NoAccount<T> value)? noAccount,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (noAccount != null) {
      return noAccount(this);
    }
    return orElse();
  }
}

abstract class _NoAccount<T> implements HomeUiState<T> {
  const factory _NoAccount() = _$_NoAccount<T>;
}

/// @nodoc
abstract class _$SuccessCopyWith<T, $Res> {
  factory _$SuccessCopyWith(
          _Success<T> value, $Res Function(_Success<T>) then) =
      __$SuccessCopyWithImpl<T, $Res>;
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$SuccessCopyWithImpl<T, $Res> extends _$HomeUiStateCopyWithImpl<T, $Res>
    implements _$SuccessCopyWith<T, $Res> {
  __$SuccessCopyWithImpl(_Success<T> _value, $Res Function(_Success<T>) _then)
      : super(_value, (v) => _then(v as _Success<T>));

  @override
  _Success<T> get _value => super._value as _Success<T>;

  @override
  $Res call({
    Object? accounts = freezed,
  }) {
    return _then(_Success<T>(
      accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_Success<T> with DiagnosticableTreeMixin implements _Success<T> {
  const _$_Success(this.accounts);

  @override
  final List<Account> accounts;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeUiState<$T>.success(accounts: $accounts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeUiState<$T>.success'))
      ..add(DiagnosticsProperty('accounts', accounts));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success<T> &&
            const DeepCollectionEquality().equals(other.accounts, accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(accounts));

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      __$SuccessCopyWithImpl<T, _Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() noAccount,
    required TResult Function(List<Account> accounts) success,
    required TResult Function(AppError error) failure,
  }) {
    return success(accounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? noAccount,
    TResult Function(List<Account> accounts)? success,
    TResult Function(AppError error)? failure,
  }) {
    return success?.call(accounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? noAccount,
    TResult Function(List<Account> accounts)? success,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(accounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T> value) init,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_NoAccount<T> value) noAccount,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_NoAccount<T> value)? noAccount,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_NoAccount<T> value)? noAccount,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements HomeUiState<T> {
  const factory _Success(List<Account> accounts) = _$_Success<T>;

  List<Account> get accounts;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<T, $Res> {
  factory _$FailureCopyWith(
          _Failure<T> value, $Res Function(_Failure<T>) then) =
      __$FailureCopyWithImpl<T, $Res>;
  $Res call({AppError error});

  $AppErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$FailureCopyWithImpl<T, $Res> extends _$HomeUiStateCopyWithImpl<T, $Res>
    implements _$FailureCopyWith<T, $Res> {
  __$FailureCopyWithImpl(_Failure<T> _value, $Res Function(_Failure<T>) _then)
      : super(_value, (v) => _then(v as _Failure<T>));

  @override
  _Failure<T> get _value => super._value as _Failure<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Failure<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }

  @override
  $AppErrorCopyWith<$Res> get error {
    return $AppErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Failure<T> with DiagnosticableTreeMixin implements _Failure<T> {
  const _$_Failure(this.error);

  @override
  final AppError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeUiState<$T>.failure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeUiState<$T>.failure'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<T, _Failure<T>> get copyWith =>
      __$FailureCopyWithImpl<T, _Failure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() noAccount,
    required TResult Function(List<Account> accounts) success,
    required TResult Function(AppError error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? noAccount,
    TResult Function(List<Account> accounts)? success,
    TResult Function(AppError error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? noAccount,
    TResult Function(List<Account> accounts)? success,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T> value) init,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_NoAccount<T> value) noAccount,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_NoAccount<T> value)? noAccount,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_NoAccount<T> value)? noAccount,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<T> implements HomeUiState<T> {
  const factory _Failure(AppError error) = _$_Failure<T>;

  AppError get error;
  @JsonKey(ignore: true)
  _$FailureCopyWith<T, _Failure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
