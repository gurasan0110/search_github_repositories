import 'package:search_github_repositories/util/result.dart';
import 'package:search_github_repositories/util/types.dart';

abstract class LanguageColorRepository {
  const LanguageColorRepository();

  Future<Result<LanguageColors>> loadLanguageColors();
}
