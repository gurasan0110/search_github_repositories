import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:search_github_repositories/data/repositories/language_color_repository/language_color_repository.dart';
import 'package:search_github_repositories/util/types.dart';

class DefaultLanguageColorRepository implements LanguageColorRepository {
  DefaultLanguageColorRepository({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;

  @override
  Future<LanguageColors> loadLanguageColors() async {
    final response = await _dio.get(
      'https://raw.githubusercontent.com/ozh/github-colors/master/colors.json',
    );

    final Json json = jsonDecode(response.data);
    return json.map((colorName, value) {
      final String? hexString = value['color'];
      final colorValue = hexString == null
          ? null
          : int.parse(hexString.replaceFirst('#', '0xff'));
      return MapEntry(colorName, colorValue);
    });
  }
}
