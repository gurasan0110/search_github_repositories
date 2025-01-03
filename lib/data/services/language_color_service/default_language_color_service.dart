import 'package:dio/dio.dart';
import 'package:search_github_repositories/data/services/language_color_service/language_color_service.dart';
import 'package:search_github_repositories/util/result.dart';

class DefaultLanguageColorService implements LanguageColorService {
  DefaultLanguageColorService({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;

  @override
  Future<Result<Response<String>>> getLanguageColors() async {
    try {
      final response = await _dio.get<String>(
        'https://raw.githubusercontent.com/ozh/github-colors/master/colors.json',
      );

      return Result(value: response);
    } on DioException catch (exception) {
      return Result(exception: exception.toString());
    } catch (exception) {
      return Result(exception: exception.toString());
    }
  }
}
