import 'package:search_github_repositories/data/models/search_repositories_query_parameters/search_repositories_query_parameters.dart';
import 'package:search_github_repositories/data/repositories/repository_repository/repository_repository.dart';
import 'package:search_github_repositories/data/services/repository_service/repository_service.dart';
import 'package:search_github_repositories/logic/models/repository/repository.dart';

class DefaultRepositoryRepository implements RepositoryRepository {
  const DefaultRepositoryRepository({
    required RepositoryService service,
  }) : _service = service;

  final RepositoryService _service;

  @override
  Future<List<Repository>> searchRepositories({
    required SearchRepositoriesQueryParameters queryParameters,
  }) {
    return _service.searchRepositories(queryParameters: queryParameters);
  }
}
