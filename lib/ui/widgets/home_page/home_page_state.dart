import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_github_repositories/data/models/search_repositories_query_parameters.dart';
import 'package:search_github_repositories/logic/models/repository.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(SearchRepositoriesQueryParameters())
    SearchRepositoriesQueryParameters queryParameters,
    List<Repository>? repositories,
  }) = _HomePageState;
}
