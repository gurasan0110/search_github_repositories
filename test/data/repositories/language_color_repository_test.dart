import 'package:flutter_test/flutter_test.dart';
import 'package:search_github_repositories/data/repositories/language_color_repository.dart';
import 'package:search_github_repositories/util/types.dart';

import '../../../testing/data/services/fake_language_color_service.dart';

void main() {
  group('LanguageColorRepository', () {
    final service = const FakeLanguageColorService();
    final repository = LanguageColorRepository(service: service);

    group('loadLanguageColors', () {
      late LanguageColors languageColors;

      setUp(() async => languageColors = await repository.loadLanguageColors());

      test(
        'Dartのカラーバリューは0xff00B4ABである',
        () => expect(languageColors['Dart'], 0xff00B4AB),
      );

      test('ASLのカラーバリューはnullである', () => expect(languageColors['ASL'], isNull));
    });
  });
}
