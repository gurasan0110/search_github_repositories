import 'package:dio/dio.dart';
import 'package:search_github_repositories/data/services/language_color_service/language_color_service.dart';

class DefaultLanguageColorService implements LanguageColorService {
  DefaultLanguageColorService({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;

  @override
  Future<Response<String>> getLanguageColors() {
    return _dio.get(
      'https://raw.githubusercontent.com/ozh/github-colors/master/colors.json',
    );
  }
}
