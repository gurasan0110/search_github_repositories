import 'package:dio/dio.dart';
import 'package:search_github_repositories/util/result.dart';

abstract class LanguageColorService {
  const LanguageColorService();

  Future<Result<Response<String>>> getLanguageColors();
}
