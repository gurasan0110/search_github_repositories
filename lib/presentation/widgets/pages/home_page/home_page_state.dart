import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_github_repositories/domain/models/query_parameters.dart';
import 'package:search_github_repositories/domain/models/repository.dart';
import 'package:search_github_repositories/presentation/states/pagination_state.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(QueryParameters()) QueryParameters queryParameters,
    @Default(PaginationState<Repository>())
    PaginationState<Repository> paginationState,
  }) = _HomePageState;
}
