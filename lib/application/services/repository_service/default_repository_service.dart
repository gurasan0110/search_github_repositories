import 'package:search_github_repositories/application/services/repository_service/repository_service.dart';
import 'package:search_github_repositories/data/repositories/repository_repository/default_repository_repository.dart';
import 'package:search_github_repositories/data/repositories/repository_repository/repository_repository.dart';
import 'package:search_github_repositories/domain/models/pagination.dart';
import 'package:search_github_repositories/domain/models/repository.dart';
import 'package:search_github_repositories/util/types.dart';

class DefaultRepositoryService implements RepositoryService {
  DefaultRepositoryService({
    RepositoryRepository? repository,
  }) : _repository = repository ?? DefaultRepositoryRepository();

  final RepositoryRepository _repository;

  @override
  Future<Pagination<Repository>> searchRepositories(Json queryParameters) {
    return _repository.searchRepositories(queryParameters);
  }
}
