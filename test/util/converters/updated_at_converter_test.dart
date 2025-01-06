import 'package:flutter_test/flutter_test.dart';
import 'package:search_github_repositories/gen/strings.g.dart';
import 'package:search_github_repositories/util/converters/updated_at_converter.dart';

void main() {
  group('UpdatedAtConverter', () {
    final converter = const UpdatedAtConverter();

    group('fromJson', () {
      test('jsonが2025-01-01T00:00:00Zの場合updatedAtは英語でJan 1, 2025である', () async {
        await LocaleSettings.setLocale(AppLocale.en);
        expect(converter.fromJson('2025-01-01T00:00:00Z'), 'Jan 1, 2025');
      });

      test('jsonが2025-01-01T00:00:00Zの場合updatedAtは日本語で2025年1月1日である', () async {
        await LocaleSettings.setLocale(AppLocale.ja);
        expect(converter.fromJson('2025-01-01T00:00:00Z'), '2025年1月1日');
      });
    });
  });
}
