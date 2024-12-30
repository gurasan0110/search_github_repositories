// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      avatarUrl: json['avatar_url'] as String,
      type: $enumDecode(_$OwnerTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'avatar_url': instance.avatarUrl,
      'type': _$OwnerTypeEnumMap[instance.type]!,
    };

const _$OwnerTypeEnumMap = {
  OwnerType.user: 'User',
  OwnerType.organization: 'Organization',
};
