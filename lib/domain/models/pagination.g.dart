// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationImpl<T> _$$PaginationImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginationImpl<T>(
      totalCount: (json['total_count'] as num).toInt(),
      items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$PaginationImplToJson<T>(
  _$PaginationImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.items.map(toJsonT).toList(),
    };
