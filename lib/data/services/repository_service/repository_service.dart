import 'package:dio/dio.dart';
import 'package:search_github_repositories/data/models/get_search_repositories_query_parameters.dart';
import 'package:search_github_repositories/util/types.dart';

abstract class RepositoryService {
  const RepositoryService();

  Future<Response<Json>> getSearchRepositories(
    GetSearchRepositoriesQueryParameters queryParameters,
  );
}
