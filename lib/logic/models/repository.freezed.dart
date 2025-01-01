// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Repository.fromJson(json);
}

/// @nodoc
mixin _$Repository {
  String get fullName => throw _privateConstructorUsedError;
  Owner? get owner => throw _privateConstructorUsedError;
  Uri get htmlUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @UpdatedAtConverter()
  String get updatedAt => throw _privateConstructorUsedError;
  @StargazersCountConverter()
  String get stargazersCount => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  bool get archived => throw _privateConstructorUsedError;

  /// Serializes this Repository to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepositoryCopyWith<Repository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res, Repository>;
  @useResult
  $Res call(
      {String fullName,
      Owner? owner,
      Uri htmlUrl,
      String? description,
      @UpdatedAtConverter() String updatedAt,
      @StargazersCountConverter() String stargazersCount,
      String? language,
      bool archived});

  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class _$RepositoryCopyWithImpl<$Res, $Val extends Repository>
    implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? owner = freezed,
    Object? htmlUrl = null,
    Object? description = freezed,
    Object? updatedAt = null,
    Object? stargazersCount = null,
    Object? language = freezed,
    Object? archived = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepositoryImplCopyWith<$Res>
    implements $RepositoryCopyWith<$Res> {
  factory _$$RepositoryImplCopyWith(
          _$RepositoryImpl value, $Res Function(_$RepositoryImpl) then) =
      __$$RepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullName,
      Owner? owner,
      Uri htmlUrl,
      String? description,
      @UpdatedAtConverter() String updatedAt,
      @StargazersCountConverter() String stargazersCount,
      String? language,
      bool archived});

  @override
  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$RepositoryImplCopyWithImpl<$Res>
    extends _$RepositoryCopyWithImpl<$Res, _$RepositoryImpl>
    implements _$$RepositoryImplCopyWith<$Res> {
  __$$RepositoryImplCopyWithImpl(
      _$RepositoryImpl _value, $Res Function(_$RepositoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? owner = freezed,
    Object? htmlUrl = null,
    Object? description = freezed,
    Object? updatedAt = null,
    Object? stargazersCount = null,
    Object? language = freezed,
    Object? archived = null,
  }) {
    return _then(_$RepositoryImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryImpl implements _Repository {
  const _$RepositoryImpl(
      {required this.fullName,
      this.owner,
      required this.htmlUrl,
      this.description,
      @UpdatedAtConverter() required this.updatedAt,
      @StargazersCountConverter() required this.stargazersCount,
      this.language,
      required this.archived});

  factory _$RepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryImplFromJson(json);

  @override
  final String fullName;
  @override
  final Owner? owner;
  @override
  final Uri htmlUrl;
  @override
  final String? description;
  @override
  @UpdatedAtConverter()
  final String updatedAt;
  @override
  @StargazersCountConverter()
  final String stargazersCount;
  @override
  final String? language;
  @override
  final bool archived;

  @override
  String toString() {
    return 'Repository(fullName: $fullName, owner: $owner, htmlUrl: $htmlUrl, description: $description, updatedAt: $updatedAt, stargazersCount: $stargazersCount, language: $language, archived: $archived)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.archived, archived) ||
                other.archived == archived));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, owner, htmlUrl,
      description, updatedAt, stargazersCount, language, archived);

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryImplCopyWith<_$RepositoryImpl> get copyWith =>
      __$$RepositoryImplCopyWithImpl<_$RepositoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryImplToJson(
      this,
    );
  }
}

abstract class _Repository implements Repository {
  const factory _Repository(
      {required final String fullName,
      final Owner? owner,
      required final Uri htmlUrl,
      final String? description,
      @UpdatedAtConverter() required final String updatedAt,
      @StargazersCountConverter() required final String stargazersCount,
      final String? language,
      required final bool archived}) = _$RepositoryImpl;

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$RepositoryImpl.fromJson;

  @override
  String get fullName;
  @override
  Owner? get owner;
  @override
  Uri get htmlUrl;
  @override
  String? get description;
  @override
  @UpdatedAtConverter()
  String get updatedAt;
  @override
  @StargazersCountConverter()
  String get stargazersCount;
  @override
  String? get language;
  @override
  bool get archived;

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepositoryImplCopyWith<_$RepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
