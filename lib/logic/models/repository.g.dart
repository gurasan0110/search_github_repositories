// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryImpl _$$RepositoryImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryImpl(
      fullName: json['full_name'] as String,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      htmlUrl: Uri.parse(json['html_url'] as String),
      description: json['description'] as String?,
      updatedAt: json['updated_at'] as String,
      stargazersCount: (json['stargazers_count'] as num).toInt(),
      language: json['language'] as String?,
      archived: json['archived'] as bool,
    );

Map<String, dynamic> _$$RepositoryImplToJson(_$RepositoryImpl instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'owner': instance.owner,
      'html_url': instance.htmlUrl.toString(),
      'description': instance.description,
      'updated_at': instance.updatedAt,
      'stargazers_count': instance.stargazersCount,
      'language': instance.language,
      'archived': instance.archived,
    };
