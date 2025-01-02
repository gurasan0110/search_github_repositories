// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_search_repositories_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$GetSearchRepositoriesQueryParametersImplToJson(
        _$GetSearchRepositoriesQueryParametersImpl instance) =>
    <String, dynamic>{
      'q': instance.q,
      'sort': _$SortEnumMap[instance.sort]!,
      'order': _$OrderEnumMap[instance.order]!,
      'page': instance.page,
    };

const _$SortEnumMap = {
  Sort.bestMatch: 'best match',
  Sort.stars: 'stars',
  Sort.forks: 'forks',
  Sort.updated: 'updated',
};

const _$OrderEnumMap = {
  Order.desc: 'desc',
  Order.asc: 'asc',
};
