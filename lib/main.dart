import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/app.dart';
import 'package:search_github_repositories/data/repositories/language_color_repository.dart';
import 'package:search_github_repositories/gen/strings.g.dart';
import 'package:search_github_repositories/ui/colors/language_colors.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await LocaleSettings.useDeviceLocale();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final repository = LanguageColorRepository();
  final languageColors = await repository.loadLanguageColors();

  FlutterNativeSplash.remove();

  runApp(ProviderScope(
    overrides: [languageColorsProvider.overrideWithValue(languageColors)],
    child: TranslationProvider(child: const App()),
  ));
}
