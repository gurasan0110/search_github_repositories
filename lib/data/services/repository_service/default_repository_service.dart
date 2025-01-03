import 'package:dio/dio.dart';
import 'package:search_github_repositories/data/github_dio.dart';
import 'package:search_github_repositories/data/models/get_search_repositories_query_parameters.dart';
import 'package:search_github_repositories/data/services/repository_service/repository_service.dart';
import 'package:search_github_repositories/util/result.dart';
import 'package:search_github_repositories/util/types.dart';

class DefaultRepositoryService implements RepositoryService {
  DefaultRepositoryService({Dio? dio}) : _dio = dio ?? GitHubDio();

  final Dio _dio;

  @override
  Future<Result<Response<Json>>> getSearchRepositories(
    GetSearchRepositoriesQueryParameters queryParameters,
  ) async {
    try {
      final response = await _dio.get<Json>(
        '/search/repositories',
        queryParameters: queryParameters.toJson(),
      );

      return Result(value: response);
    } on DioException catch (exception) {
      return Result(exception: exception.toString());
    } catch (exception) {
      return Result(exception: exception.toString());
    }
  }
}
