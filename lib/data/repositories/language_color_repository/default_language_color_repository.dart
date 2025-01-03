import 'dart:convert';

import 'package:search_github_repositories/data/repositories/language_color_repository/language_color_repository.dart';
import 'package:search_github_repositories/data/services/language_color_service/default_language_color_service.dart';
import 'package:search_github_repositories/data/services/language_color_service/language_color_service.dart';
import 'package:search_github_repositories/util/result.dart';
import 'package:search_github_repositories/util/types.dart';

class DefaultLanguageColorRepository implements LanguageColorRepository {
  DefaultLanguageColorRepository({
    LanguageColorService? service,
  }) : _service = service ?? DefaultLanguageColorService();

  final LanguageColorService _service;

  @override
  Future<Result<LanguageColors>> loadLanguageColors() async {
    final result = await _service.getLanguageColors();
    return result.map(
      exception: (exception) => Result(exception: exception),
      value: (response) {
        final Json json = jsonDecode(response!.data!);
        final languageColors = json.map((colorName, value) {
          final String? hexString = value['color'];
          final colorValue = hexString == null
              ? null
              : int.parse(hexString.replaceFirst('#', '0xff'));
          return MapEntry(colorName, colorValue);
        });

        return Result(value: languageColors);
      },
    );
  }
}
