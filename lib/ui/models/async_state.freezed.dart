// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AsyncState<T> {
  T? get value => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AsyncStateCopyWith<T, AsyncState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncStateCopyWith<T, $Res> {
  factory $AsyncStateCopyWith(
          AsyncState<T> value, $Res Function(AsyncState<T>) then) =
      _$AsyncStateCopyWithImpl<T, $Res, AsyncState<T>>;
  @useResult
  $Res call({T? value, Exception? exception, bool isLoading});
}

/// @nodoc
class _$AsyncStateCopyWithImpl<T, $Res, $Val extends AsyncState<T>>
    implements $AsyncStateCopyWith<T, $Res> {
  _$AsyncStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? exception = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AsyncStateImplCopyWith<T, $Res>
    implements $AsyncStateCopyWith<T, $Res> {
  factory _$$AsyncStateImplCopyWith(
          _$AsyncStateImpl<T> value, $Res Function(_$AsyncStateImpl<T>) then) =
      __$$AsyncStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? value, Exception? exception, bool isLoading});
}

/// @nodoc
class __$$AsyncStateImplCopyWithImpl<T, $Res>
    extends _$AsyncStateCopyWithImpl<T, $Res, _$AsyncStateImpl<T>>
    implements _$$AsyncStateImplCopyWith<T, $Res> {
  __$$AsyncStateImplCopyWithImpl(
      _$AsyncStateImpl<T> _value, $Res Function(_$AsyncStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? exception = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$AsyncStateImpl<T>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AsyncStateImpl<T> implements _AsyncState<T> {
  const _$AsyncStateImpl({this.value, this.exception, this.isLoading = false});

  @override
  final T? value;
  @override
  final Exception? exception;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AsyncState<$T>(value: $value, exception: $exception, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncStateImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(value), exception, isLoading);

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncStateImplCopyWith<T, _$AsyncStateImpl<T>> get copyWith =>
      __$$AsyncStateImplCopyWithImpl<T, _$AsyncStateImpl<T>>(this, _$identity);
}

abstract class _AsyncState<T> implements AsyncState<T> {
  const factory _AsyncState(
      {final T? value,
      final Exception? exception,
      final bool isLoading}) = _$AsyncStateImpl<T>;

  @override
  T? get value;
  @override
  Exception? get exception;
  @override
  bool get isLoading;

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AsyncStateImplCopyWith<T, _$AsyncStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
