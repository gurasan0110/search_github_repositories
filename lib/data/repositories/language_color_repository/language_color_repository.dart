import 'package:search_github_repositories/util/types.dart';

abstract class LanguageColorRepository {
  const LanguageColorRepository();

  Future<LanguageColors> loadLanguageColors();
}
