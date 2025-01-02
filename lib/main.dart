import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/app.dart';
import 'package:search_github_repositories/data/repositories/language_color_repository/default_language_color_repository.dart';
import 'package:search_github_repositories/ui/colors/language_colors/language_colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final repository = DefaultLanguageColorRepository();
  final languageColors = await repository.loadLanguageColors();

  runApp(ProviderScope(
    overrides: [languageColorsProvider.overrideWithValue(languageColors)],
    child: const App(),
  ));
}
