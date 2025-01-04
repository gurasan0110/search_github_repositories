import 'package:search_github_repositories/data/models/get_search_repositories_query_parameters.dart';
import 'package:search_github_repositories/data/services/repository_service/default_repository_service.dart';
import 'package:search_github_repositories/data/services/repository_service/repository_service.dart';
import 'package:search_github_repositories/logic/models/pagination.dart';
import 'package:search_github_repositories/logic/models/repository.dart';
import 'package:search_github_repositories/util/types.dart';

class RepositoryRepository {
  RepositoryRepository({
    RepositoryService? service,
  }) : _service = service ?? DefaultRepositoryService();

  final RepositoryService _service;

  Future<Pagination<Repository>> searchRepositories(
    GetSearchRepositoriesQueryParameters queryParameters,
  ) async {
    final response = await _service.getSearchRepositories(queryParameters);
    return Pagination.fromJson(response.data!, (object) {
      final json = object as Json;
      return Repository.fromJson(json);
    });
  }
}
