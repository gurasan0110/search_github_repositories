import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:search_github_repositories/data/repositories/language_color_repository/default_language_color_repository.dart';
import 'package:search_github_repositories/util/types.dart';

import '../dio.mocks.dart';

void main() {
  group('DefaultLanguageColorRepository', () {
    final dio = MockDio();
    final repository = DefaultLanguageColorRepository(dio: dio);

    group('loadLanguageColors', () {
      const data = '''
      {
        "Dart": {
          "color": "#00B4AB",
          "url": "https://github.com/trending?l=Dart"
        },
        "ASL": {
          "color": null,
          "url": "https://github.com/trending?l=ASL"
        }
      }
      ''';

      when(dio.get(
        'https://raw.githubusercontent.com/ozh/github-colors/master/colors.json',
      )).thenAnswer(
        (_) => Future.value(Response(
          data: data,
          requestOptions: RequestOptions(),
        )),
      );

      late LanguageColors languageColors;

      setUpAll(
        () async => languageColors = await repository.loadLanguageColors(),
      );

      test(
        'Dartのvalueは0xff00B4ABである',
        () => expect(languageColors['Dart'], 0xff00B4AB),
      );

      test('ASLのvalueはnullである', () => expect(languageColors['ASL'], isNull));
    });
  });
}
