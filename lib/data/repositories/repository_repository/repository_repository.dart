import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:search_github_repositories/data/models/search_repositories_query_parameters.dart';
import 'package:search_github_repositories/logic/models/repository.dart';

part 'repository_repository.g.dart';

@Riverpod(keepAlive: true)
RepositoryRepository repositoryRepository(Ref ref) {
  throw UnimplementedError();
}

abstract class RepositoryRepository {
  const RepositoryRepository();

  Future<List<Repository>> searchRepositories({
    required SearchRepositoriesQueryParameters queryParameters,
  });
}
