import 'dart:convert';

import 'package:search_github_repositories/data/repositories/language_color_repository/language_color_repository.dart';
import 'package:search_github_repositories/data/services/language_color_service/default_language_color_service.dart';
import 'package:search_github_repositories/data/services/language_color_service/language_color_service.dart';
import 'package:search_github_repositories/util/types.dart';

class DefaultLanguageColorRepository implements LanguageColorRepository {
  DefaultLanguageColorRepository({
    LanguageColorService? service,
  }) : _service = service ?? DefaultLanguageColorService();

  final LanguageColorService _service;

  @override
  Future<LanguageColors> loadLanguageColors() async {
    final response = await _service.getLanguageColors();
    final Json json = jsonDecode(response.data!);
    return json.map((colorName, value) {
      final String? hexString = value['color'];
      final colorValue = hexString == null
          ? null
          : int.parse(hexString.replaceFirst('#', '0xff'));
      return MapEntry(colorName, colorValue);
    });
  }
}
