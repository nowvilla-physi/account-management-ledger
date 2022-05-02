// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  Success<T, E> success<T, E>(T value) {
    return Success<T, E>(
      value,
    );
  }

  Failure<T, E> failure<T, E>(E error) {
    return Failure<T, E>(
      error,
    );
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result<T, E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(E error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(E error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(E error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T, E> value) success,
    required TResult Function(Failure<T, E> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Failure<T, E> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Failure<T, E> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, E, $Res> {
  factory $ResultCopyWith(
          Result<T, E> value, $Res Function(Result<T, E>) then) =
      _$ResultCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, E, $Res> implements $ResultCopyWith<T, E, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<T, E> _value;
  // ignore: unused_field
  final $Res Function(Result<T, E>) _then;
}

/// @nodoc
abstract class $SuccessCopyWith<T, E, $Res> {
  factory $SuccessCopyWith(
          Success<T, E> value, $Res Function(Success<T, E>) then) =
      _$SuccessCopyWithImpl<T, E, $Res>;
  $Res call({T value});
}

/// @nodoc
class _$SuccessCopyWithImpl<T, E, $Res> extends _$ResultCopyWithImpl<T, E, $Res>
    implements $SuccessCopyWith<T, E, $Res> {
  _$SuccessCopyWithImpl(
      Success<T, E> _value, $Res Function(Success<T, E>) _then)
      : super(_value, (v) => _then(v as Success<T, E>));

  @override
  Success<T, E> get _value => super._value as Success<T, E>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(Success<T, E>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Success<T, E> with DiagnosticableTreeMixin implements Success<T, E> {
  const _$Success(this.value);

  @override
  final T value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Result<$T, $E>.success(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Result<$T, $E>.success'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Success<T, E> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<T, E, Success<T, E>> get copyWith =>
      _$SuccessCopyWithImpl<T, E, Success<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(E error) failure,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(E error)? failure,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(E error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T, E> value) success,
    required TResult Function(Failure<T, E> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Failure<T, E> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Failure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T, E> implements Result<T, E> {
  const factory Success(T value) = _$Success<T, E>;

  T get value;
  @JsonKey(ignore: true)
  $SuccessCopyWith<T, E, Success<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<T, E, $Res> {
  factory $FailureCopyWith(
          Failure<T, E> value, $Res Function(Failure<T, E>) then) =
      _$FailureCopyWithImpl<T, E, $Res>;
  $Res call({E error});
}

/// @nodoc
class _$FailureCopyWithImpl<T, E, $Res> extends _$ResultCopyWithImpl<T, E, $Res>
    implements $FailureCopyWith<T, E, $Res> {
  _$FailureCopyWithImpl(
      Failure<T, E> _value, $Res Function(Failure<T, E>) _then)
      : super(_value, (v) => _then(v as Failure<T, E>));

  @override
  Failure<T, E> get _value => super._value as Failure<T, E>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Failure<T, E>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$Failure<T, E> with DiagnosticableTreeMixin implements Failure<T, E> {
  const _$Failure(this.error);

  @override
  final E error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Result<$T, $E>.failure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Result<$T, $E>.failure'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failure<T, E> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $FailureCopyWith<T, E, Failure<T, E>> get copyWith =>
      _$FailureCopyWithImpl<T, E, Failure<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(E error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(E error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(E error)? failure,
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
    required TResult Function(Success<T, E> value) success,
    required TResult Function(Failure<T, E> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Failure<T, E> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Failure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T, E> implements Result<T, E> {
  const factory Failure(E error) = _$Failure<T, E>;

  E get error;
  @JsonKey(ignore: true)
  $FailureCopyWith<T, E, Failure<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
