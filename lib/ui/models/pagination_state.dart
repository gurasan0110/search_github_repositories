import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_github_repositories/logic/models/pagination.dart';

part 'pagination_state.freezed.dart';

@freezed
class PaginationState<T> with _$PaginationState<T> {
  const factory PaginationState({
    Pagination<T>? pagination,
    Exception? exception,
    @Default(false) bool isLoadingFirstPage,
    @Default(false) bool isLoadingNextPage,
  }) = _PaginationState;
}
