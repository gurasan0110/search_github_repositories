// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_repositories_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchRepositoriesQueryParameters {
  String get q => throw _privateConstructorUsedError;
  Sort get sort => throw _privateConstructorUsedError;
  Order get order => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  /// Serializes this SearchRepositoriesQueryParameters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchRepositoriesQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchRepositoriesQueryParametersCopyWith<SearchRepositoriesQueryParameters>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRepositoriesQueryParametersCopyWith<$Res> {
  factory $SearchRepositoriesQueryParametersCopyWith(
          SearchRepositoriesQueryParameters value,
          $Res Function(SearchRepositoriesQueryParameters) then) =
      _$SearchRepositoriesQueryParametersCopyWithImpl<$Res,
          SearchRepositoriesQueryParameters>;
  @useResult
  $Res call({String q, Sort sort, Order order, int page});
}

/// @nodoc
class _$SearchRepositoriesQueryParametersCopyWithImpl<$Res,
        $Val extends SearchRepositoriesQueryParameters>
    implements $SearchRepositoriesQueryParametersCopyWith<$Res> {
  _$SearchRepositoriesQueryParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchRepositoriesQueryParameters
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
abstract class _$$SearchRepositoriesQueryParametersImplCopyWith<$Res>
    implements $SearchRepositoriesQueryParametersCopyWith<$Res> {
  factory _$$SearchRepositoriesQueryParametersImplCopyWith(
          _$SearchRepositoriesQueryParametersImpl value,
          $Res Function(_$SearchRepositoriesQueryParametersImpl) then) =
      __$$SearchRepositoriesQueryParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String q, Sort sort, Order order, int page});
}

/// @nodoc
class __$$SearchRepositoriesQueryParametersImplCopyWithImpl<$Res>
    extends _$SearchRepositoriesQueryParametersCopyWithImpl<$Res,
        _$SearchRepositoriesQueryParametersImpl>
    implements _$$SearchRepositoriesQueryParametersImplCopyWith<$Res> {
  __$$SearchRepositoriesQueryParametersImplCopyWithImpl(
      _$SearchRepositoriesQueryParametersImpl _value,
      $Res Function(_$SearchRepositoriesQueryParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchRepositoriesQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? sort = null,
    Object? order = null,
    Object? page = null,
  }) {
    return _then(_$SearchRepositoriesQueryParametersImpl(
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
class _$SearchRepositoriesQueryParametersImpl
    implements _SearchRepositoriesQueryParameters {
  const _$SearchRepositoriesQueryParametersImpl(
      {required this.q,
      this.sort = Sort.bestMatch,
      this.order = Order.desc,
      this.page = 1});

  @override
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
    return 'SearchRepositoriesQueryParameters(q: $q, sort: $sort, order: $order, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRepositoriesQueryParametersImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, q, sort, order, page);

  /// Create a copy of SearchRepositoriesQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRepositoriesQueryParametersImplCopyWith<
          _$SearchRepositoriesQueryParametersImpl>
      get copyWith => __$$SearchRepositoriesQueryParametersImplCopyWithImpl<
          _$SearchRepositoriesQueryParametersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRepositoriesQueryParametersImplToJson(
      this,
    );
  }
}

abstract class _SearchRepositoriesQueryParameters
    implements SearchRepositoriesQueryParameters {
  const factory _SearchRepositoriesQueryParameters(
      {required final String q,
      final Sort sort,
      final Order order,
      final int page}) = _$SearchRepositoriesQueryParametersImpl;

  @override
  String get q;
  @override
  Sort get sort;
  @override
  Order get order;
  @override
  int get page;

  /// Create a copy of SearchRepositoriesQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchRepositoriesQueryParametersImplCopyWith<
          _$SearchRepositoriesQueryParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
