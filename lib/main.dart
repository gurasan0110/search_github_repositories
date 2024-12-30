import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/app.dart';
import 'package:search_github_repositories/data/dio/default_dio.dart';
import 'package:search_github_repositories/data/dio/dio.dart';
import 'package:search_github_repositories/data/repositories/repository_repository/default_repository_repository.dart';
import 'package:search_github_repositories/data/repositories/repository_repository/repository_repository.dart';
import 'package:search_github_repositories/data/services/repository_service/default_repository_service.dart';
import 'package:search_github_repositories/data/services/repository_service/repository_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(ProviderScope(
    overrides: [
      dioProvider.overrideWithValue(DefaultDio()),
      repositoryServiceProvider.overrideWith((ref) {
        final dio = ref.watch(dioProvider);
        return DefaultRepositoryService(dio: dio);
      }),
      repositoryRepositoryProvider.overrideWith((ref) {
        final service = ref.watch(repositoryServiceProvider);
        return DefaultRepositoryRepository(service: service);
      }),
    ],
    child: const App(),
  ));
}
