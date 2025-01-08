import 'package:search_github_repositories/application/services/language_color_service/language_color_service.dart';
import 'package:search_github_repositories/data/repositories/language_color_repository/default_language_color_repository.dart';
import 'package:search_github_repositories/data/repositories/language_color_repository/language_color_repository.dart';
import 'package:search_github_repositories/util/types.dart';

class DefaultLanguageColorService implements LanguageColorService {
  DefaultLanguageColorService({
    LanguageColorRepository? repository,
  }) : _repository = repository ?? DefaultLanguageColorRepository();

  final LanguageColorRepository _repository;

  @override
  Future<LanguageColors> loadLanguageColors() {
    return _repository.loadLanguageColors();
  }
}
