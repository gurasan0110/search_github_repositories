import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_github_repositories/logic/models/pagination.dart';
import 'package:search_github_repositories/util/result.dart';

part 'pagination_state.freezed.dart';

@freezed
class PaginationState<T> with _$PaginationState<T> {
  const factory PaginationState({
    required Result<Pagination<T>> result,
    @Default(false) bool isLoadingFirstPage,
    @Default(false) bool isLoadingNextPage,
  }) = _PaginationState;
}
