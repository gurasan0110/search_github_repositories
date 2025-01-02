import 'package:search_github_repositories/util/types.dart';

abstract class LanguageColorService {
  const LanguageColorService();

  Future<Json> loadLanguageColors();
}
