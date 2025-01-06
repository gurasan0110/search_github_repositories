// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QueryParameters {
  String get q => throw _privateConstructorUsedError;
  Sort get sort => throw _privateConstructorUsedError;
  Order get order => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  /// Serializes this QueryParameters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QueryParametersCopyWith<QueryParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryParametersCopyWith<$Res> {
  factory $QueryParametersCopyWith(
          QueryParameters value, $Res Function(QueryParameters) then) =
      _$QueryParametersCopyWithImpl<$Res, QueryParameters>;
  @useResult
  $Res call({String q, Sort sort, Order order, int page});
}

/// @nodoc
class _$QueryParametersCopyWithImpl<$Res, $Val extends QueryParameters>
    implements $QueryParametersCopyWith<$Res> {
  _$QueryParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? sort = null,
    Object? order = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      q: null == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QueryParametersImplCopyWith<$Res>
    implements $QueryParametersCopyWith<$Res> {
  factory _$$QueryParametersImplCopyWith(_$QueryParametersImpl value,
          $Res Function(_$QueryParametersImpl) then) =
      __$$QueryParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String q, Sort sort, Order order, int page});
}

/// @nodoc
class __$$QueryParametersImplCopyWithImpl<$Res>
    extends _$QueryParametersCopyWithImpl<$Res, _$QueryParametersImpl>
    implements _$$QueryParametersImplCopyWith<$Res> {
  __$$QueryParametersImplCopyWithImpl(
      _$QueryParametersImpl _value, $Res Function(_$QueryParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of QueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? sort = null,
    Object? order = null,
    Object? page = null,
  }) {
    return _then(_$QueryParametersImpl(
      q: null == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$QueryParametersImpl implements _QueryParameters {
  const _$QueryParametersImpl(
      {this.q = '',
      this.sort = Sort.bestMatch,
      this.order = Order.desc,
      this.page = 1});

  @override
  @JsonKey()
  final String q;
  @override
  @JsonKey()
  final Sort sort;
  @override
  @JsonKey()
  final Order order;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'QueryParameters(q: $q, sort: $sort, order: $order, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryParametersImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, q, sort, order, page);

  /// Create a copy of QueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryParametersImplCopyWith<_$QueryParametersImpl> get copyWith =>
      __$$QueryParametersImplCopyWithImpl<_$QueryParametersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueryParametersImplToJson(
      this,
    );
  }
}

abstract class _QueryParameters implements QueryParameters {
  const factory _QueryParameters(
      {final String q,
      final Sort sort,
      final Order order,
      final int page}) = _$QueryParametersImpl;

  @override
  String get q;
  @override
  Sort get sort;
  @override
  Order get order;
  @override
  int get page;

  /// Create a copy of QueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueryParametersImplCopyWith<_$QueryParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
