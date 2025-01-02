import 'package:dio/dio.dart';

abstract class LanguageColorService {
  const LanguageColorService();

  Future<Response<String>> getLanguageColors();
}
