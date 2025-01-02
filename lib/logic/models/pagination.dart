import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_github_repositories/util/types.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@Freezed(genericArgumentFactories: true)
class Pagination<T> with _$Pagination<T> {
  const Pagination._();

  const factory Pagination({
    required int totalCount,
    required List<T> items,
  }) = _Pagination;

  factory Pagination.fromJson(
    Json json,
    T Function(Object?) fromJsonT,
  ) =>
      _$PaginationFromJson(json, fromJsonT);

  int get maxPage {
    const perPage = 30;
    return (totalCount / perPage).ceil();
  }
}
