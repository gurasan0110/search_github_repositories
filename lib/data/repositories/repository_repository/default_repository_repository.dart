import 'package:dio/dio.dart';
import 'package:search_github_repositories/data/github_dio.dart';
import 'package:search_github_repositories/data/repositories/repository_repository/repository_repository.dart';
import 'package:search_github_repositories/domain/models/pagination.dart';
import 'package:search_github_repositories/domain/models/repository.dart';
import 'package:search_github_repositories/util/types.dart';

class DefaultRepositoryRepository implements RepositoryRepository {
  DefaultRepositoryRepository({Dio? dio}) : _dio = dio ?? GitHubDio();

  final Dio _dio;

  @override
  Future<Pagination<Repository>> searchRepositories(
    Json queryParameters,
  ) async {
    final response = await _dio.get(
      '/search/repositories',
      queryParameters: queryParameters,
    );

    return Pagination.fromJson(response.data, (object) {
      final json = object as Json;
      return Repository.fromJson(json);
    });
  }
}
