import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:search_github_repositories/gen/strings.g.dart';
import 'package:search_github_repositories/presentation/widgets/pages/home_page/widgets/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData.dark(),
      locale: TranslationProvider.of(context).flutterLocale,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: AppLocaleUtils.supportedLocales,
      debugShowCheckedModeBanner: false,
    );
  }
}
