import 'package:dio/dio.dart';
import 'package:search_github_repositories/data/models/search_repositories_query_parameters.dart';
import 'package:search_github_repositories/data/services/repository_service/repository_service.dart';
import 'package:search_github_repositories/logic/models/repository.dart';
import 'package:search_github_repositories/util/types.dart';

class DefaultRepositoryService implements RepositoryService {
  const DefaultRepositoryService({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<List<Repository>> searchRepositories({
    required SearchRepositoriesQueryParameters queryParameters,
  }) async {
    final response = await _dio.get(
      '/search/repositories',
      queryParameters: queryParameters.toJson(),
    );
    final items = (response.data['items'] as List).cast<Json>();
    return items.map(Repository.fromJson).toList();
  }
}
