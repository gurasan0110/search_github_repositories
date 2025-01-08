import 'package:search_github_repositories/domain/models/pagination.dart';
import 'package:search_github_repositories/domain/models/repository.dart';
import 'package:search_github_repositories/util/types.dart';

abstract class RepositoryService {
  const RepositoryService();

  Future<Pagination<Repository>> searchRepositories(Json queryParameters);
}
