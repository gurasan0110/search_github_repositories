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
    final json = await _service.loadLanguageColors();
    final entries = json.entries.map((entry) {
      final name = entry.key;
      final String? hexString = entry.value['color'];
      if (hexString == null) {
        return MapEntry(name, null);
      }

      final hex = hexString.replaceFirst('#', '0xff');
      final value = int.parse(hex);
      return MapEntry(name, value);
    });

    return Map.fromEntries(entries);
  }
}
