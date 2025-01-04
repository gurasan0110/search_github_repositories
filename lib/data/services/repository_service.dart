import 'package:dio/dio.dart';
import 'package:search_github_repositories/data/github_dio.dart';
import 'package:search_github_repositories/data/models/get_search_repositories_query_parameters.dart';
import 'package:search_github_repositories/util/types.dart';

class RepositoryService {
  RepositoryService();

  final _dio = GitHubDio();

  Future<Response<Json>> getSearchRepositories(
    GetSearchRepositoriesQueryParameters queryParameters,
  ) {
    return _dio.get(
      '/search/repositories',
      queryParameters: queryParameters.toJson(),
    );
  }
}
