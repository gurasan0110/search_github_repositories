import 'package:search_github_repositories/data/models/get_search_repositories_query_parameters.dart';
import 'package:search_github_repositories/logic/models/pagination.dart';
import 'package:search_github_repositories/logic/models/repository.dart';
import 'package:search_github_repositories/util/result.dart';

abstract class RepositoryRepository {
  const RepositoryRepository();

  Future<Result<Pagination<Repository>>> searchRepositories(
    GetSearchRepositoriesQueryParameters queryParameters,
  );
}
