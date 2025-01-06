import 'package:dio/dio.dart';
import 'package:search_github_repositories/util/types.dart';

abstract class RepositoryService {
  const RepositoryService();

  Future<Response<Json>> getSearchRepositories(Json queryParameters);
}
