import 'package:search_github_repositories/data/models/get_search_repositories_query_parameters.dart';
import 'package:search_github_repositories/data/repositories/repository_repository/repository_repository.dart';
import 'package:search_github_repositories/data/services/repository_service/default_repository_service.dart';
import 'package:search_github_repositories/data/services/repository_service/repository_service.dart';
import 'package:search_github_repositories/logic/models/pagination.dart';
import 'package:search_github_repositories/logic/models/repository.dart';
import 'package:search_github_repositories/util/result.dart';
import 'package:search_github_repositories/util/types.dart';

class DefaultRepositoryRepository implements RepositoryRepository {
  DefaultRepositoryRepository({
    RepositoryService? service,
  }) : _service = service ?? DefaultRepositoryService();

  final RepositoryService _service;

  @override
  Future<Result<Pagination<Repository>>> searchRepositories(
    GetSearchRepositoriesQueryParameters queryParameters,
  ) async {
    final result = await _service.getSearchRepositories(queryParameters);
    return result.map(
      exception: (exception) => Result(exception: exception),
      value: (response) {
        final json = response!.data!;
        final pagination = Pagination.fromJson(json, (object) {
          final json = object as Json;
          return Repository.fromJson(json);
        });

        return Result(value: pagination);
      },
    );
  }
}
