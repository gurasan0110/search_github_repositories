// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSearchHistoryCollection on Isar {
  IsarCollection<SearchHistory> get searchHistorys => this.collection();
}

const SearchHistorySchema = CollectionSchema(
  name: r'SearchHistory',
  id: -4204570823138025228,
  properties: {
    r'q': PropertySchema(
      id: 0,
      name: r'q',
      type: IsarType.string,
    ),
    r'searchedAt': PropertySchema(
      id: 1,
      name: r'searchedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _searchHistoryEstimateSize,
  serialize: _searchHistorySerialize,
  deserialize: _searchHistoryDeserialize,
  deserializeProp: _searchHistoryDeserializeProp,
  idName: r'id',
  indexes: {
    r'q': IndexSchema(
      id: -992931083124165738,
      name: r'q',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'q',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _searchHistoryGetId,
  getLinks: _searchHistoryGetLinks,
  attach: _searchHistoryAttach,
  version: '3.1.0+1',
);

int _searchHistoryEstimateSize(
  SearchHistory object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.q.length * 3;
  return bytesCount;
}

void _searchHistorySerialize(
  SearchHistory object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.q);
  writer.writeDateTime(offsets[1], object.searchedAt);
}

SearchHistory _searchHistoryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SearchHistory(
    q: reader.readString(offsets[0]),
    searchedAt: reader.readDateTime(offsets[1]),
  );
  object.id = id;
  return object;
}

P _searchHistoryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _searchHistoryGetId(SearchHistory object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _searchHistoryGetLinks(SearchHistory object) {
  return [];
}

void _searchHistoryAttach(
    IsarCollection<dynamic> col, Id id, SearchHistory object) {
  object.id = id;
}

extension SearchHistoryByIndex on IsarCollection<SearchHistory> {
  Future<SearchHistory?> getByQ(String q) {
    return getByIndex(r'q', [q]);
  }

  SearchHistory? getByQSync(String q) {
    return getByIndexSync(r'q', [q]);
  }

  Future<bool> deleteByQ(String q) {
    return deleteByIndex(r'q', [q]);
  }

  bool deleteByQSync(String q) {
    return deleteByIndexSync(r'q', [q]);
  }

  Future<List<SearchHistory?>> getAllByQ(List<String> qValues) {
    final values = qValues.map((e) => [e]).toList();
    return getAllByIndex(r'q', values);
  }

  List<SearchHistory?> getAllByQSync(List<String> qValues) {
    final values = qValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'q', values);
  }

  Future<int> deleteAllByQ(List<String> qValues) {
    final values = qValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'q', values);
  }

  int deleteAllByQSync(List<String> qValues) {
    final values = qValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'q', values);
  }

  Future<Id> putByQ(SearchHistory object) {
    return putByIndex(r'q', object);
  }

  Id putByQSync(SearchHistory object, {bool saveLinks = true}) {
    return putByIndexSync(r'q', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByQ(List<SearchHistory> objects) {
    return putAllByIndex(r'q', objects);
  }

  List<Id> putAllByQSync(List<SearchHistory> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'q', objects, saveLinks: saveLinks);
  }
}

extension SearchHistoryQueryWhereSort
    on QueryBuilder<SearchHistory, SearchHistory, QWhere> {
  QueryBuilder<SearchHistory, SearchHistory, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SearchHistoryQueryWhere
    on QueryBuilder<SearchHistory, SearchHistory, QWhereClause> {
  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> qEqualTo(
      String q) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'q',
        value: [q],
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> qNotEqualTo(
      String q) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'q',
              lower: [],
              upper: [q],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'q',
              lower: [q],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'q',
              lower: [q],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'q',
              lower: [],
              upper: [q],
              includeUpper: false,
            ));
      }
    });
  }
}

extension SearchHistoryQueryFilter
    on QueryBuilder<SearchHistory, SearchHistory, QFilterCondition> {
  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition> qEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'q',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      qGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'q',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition> qLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'q',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition> qBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'q',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition> qStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'q',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition> qEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'q',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition> qContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'q',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition> qMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'q',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition> qIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'q',
        value: '',
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      qIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'q',
        value: '',
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      searchedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      searchedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'searchedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      searchedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'searchedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      searchedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'searchedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SearchHistoryQueryObject
    on QueryBuilder<SearchHistory, SearchHistory, QFilterCondition> {}

extension SearchHistoryQueryLinks
    on QueryBuilder<SearchHistory, SearchHistory, QFilterCondition> {}

extension SearchHistoryQuerySortBy
    on QueryBuilder<SearchHistory, SearchHistory, QSortBy> {
  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy> sortByQ() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'q', Sort.asc);
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy> sortByQDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'q', Sort.desc);
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy> sortBySearchedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchedAt', Sort.asc);
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy>
      sortBySearchedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchedAt', Sort.desc);
    });
  }
}

extension SearchHistoryQuerySortThenBy
    on QueryBuilder<SearchHistory, SearchHistory, QSortThenBy> {
  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy> thenByQ() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'q', Sort.asc);
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy> thenByQDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'q', Sort.desc);
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy> thenBySearchedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchedAt', Sort.asc);
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy>
      thenBySearchedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchedAt', Sort.desc);
    });
  }
}

extension SearchHistoryQueryWhereDistinct
    on QueryBuilder<SearchHistory, SearchHistory, QDistinct> {
  QueryBuilder<SearchHistory, SearchHistory, QDistinct> distinctByQ(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'q', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QDistinct> distinctBySearchedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'searchedAt');
    });
  }
}

extension SearchHistoryQueryProperty
    on QueryBuilder<SearchHistory, SearchHistory, QQueryProperty> {
  QueryBuilder<SearchHistory, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SearchHistory, String, QQueryOperations> qProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'q');
    });
  }

  QueryBuilder<SearchHistory, DateTime, QQueryOperations> searchedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'searchedAt');
    });
  }
}
