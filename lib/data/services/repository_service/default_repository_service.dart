import 'package:dio/dio.dart';
import 'package:search_github_repositories/data/github_dio.dart';
import 'package:search_github_repositories/data/services/repository_service/repository_service.dart';
import 'package:search_github_repositories/util/types.dart';

class DefaultRepositoryService implements RepositoryService {
  DefaultRepositoryService();

  final _dio = GitHubDio();

  @override
  Future<Response<Json>> getSearchRepositories(Json queryParameters) {
    return _dio.get('/search/repositories', queryParameters: queryParameters);
  }
}
