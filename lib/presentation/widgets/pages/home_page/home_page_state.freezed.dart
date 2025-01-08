// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageState {
  QueryParameters get queryParameters => throw _privateConstructorUsedError;
  PaginationState<Repository> get paginationState =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {QueryParameters queryParameters,
      PaginationState<Repository> paginationState});

  $QueryParametersCopyWith<$Res> get queryParameters;
  $PaginationStateCopyWith<Repository, $Res> get paginationState;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParameters = null,
    Object? paginationState = null,
  }) {
    return _then(_value.copyWith(
      queryParameters: null == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as QueryParameters,
      paginationState: null == paginationState
          ? _value.paginationState
          : paginationState // ignore: cast_nullable_to_non_nullable
              as PaginationState<Repository>,
    ) as $Val);
  }

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QueryParametersCopyWith<$Res> get queryParameters {
    return $QueryParametersCopyWith<$Res>(_value.queryParameters, (value) {
      return _then(_value.copyWith(queryParameters: value) as $Val);
    });
  }

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationStateCopyWith<Repository, $Res> get paginationState {
    return $PaginationStateCopyWith<Repository, $Res>(_value.paginationState,
        (value) {
      return _then(_value.copyWith(paginationState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QueryParameters queryParameters,
      PaginationState<Repository> paginationState});

  @override
  $QueryParametersCopyWith<$Res> get queryParameters;
  @override
  $PaginationStateCopyWith<Repository, $Res> get paginationState;
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParameters = null,
    Object? paginationState = null,
  }) {
    return _then(_$HomePageStateImpl(
      queryParameters: null == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as QueryParameters,
      paginationState: null == paginationState
          ? _value.paginationState
          : paginationState // ignore: cast_nullable_to_non_nullable
              as PaginationState<Repository>,
    ));
  }
}

/// @nodoc

class _$HomePageStateImpl implements _HomePageState {
  const _$HomePageStateImpl(
      {this.queryParameters = const QueryParameters(),
      this.paginationState = const PaginationState<Repository>()});

  @override
  @JsonKey()
  final QueryParameters queryParameters;
  @override
  @JsonKey()
  final PaginationState<Repository> paginationState;

  @override
  String toString() {
    return 'HomePageState(queryParameters: $queryParameters, paginationState: $paginationState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateImpl &&
            (identical(other.queryParameters, queryParameters) ||
                other.queryParameters == queryParameters) &&
            (identical(other.paginationState, paginationState) ||
                other.paginationState == paginationState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, queryParameters, paginationState);

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      __$$HomePageStateImplCopyWithImpl<_$HomePageStateImpl>(this, _$identity);
}

abstract class _HomePageState implements HomePageState {
  const factory _HomePageState(
      {final QueryParameters queryParameters,
      final PaginationState<Repository> paginationState}) = _$HomePageStateImpl;

  @override
  QueryParameters get queryParameters;
  @override
  PaginationState<Repository> get paginationState;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
