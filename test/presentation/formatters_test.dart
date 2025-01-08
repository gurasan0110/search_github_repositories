import 'package:flutter_test/flutter_test.dart';
import 'package:search_github_repositories/gen/strings.g.dart';
import 'package:search_github_repositories/presentation/formatters.dart';

void main() {
  group('Formatters', () {
    group('updatedAt', () {
      final updatedAt = DateTime(2025);

      test(
        'updatedAtが2025年1月1日の場合formattedUpdatedAtは英語でString型のJan 1, 2025である',
        () async {
          await LocaleSettings.setLocale(AppLocale.en);
          expect(Formatters.updatedAt.format(updatedAt), 'Jan 1, 2025');
        },
      );

      test(
        'updatedAtが2025年1月1日の場合formattedUpdatedAtは日本語でString型の2025年1月1日である',
        () async {
          await LocaleSettings.setLocale(AppLocale.ja);
          expect(Formatters.updatedAt.format(updatedAt), '2025年1月1日');
        },
      );
    });

    group('number', () {
      test(
        'numberが500の場合formattedNumberはString型の500である',
        () => expect(Formatters.number.format(500), '500'),
      );

      test(
        'numberが1000の場合formattedNumberはString型の1Kである',
        () => expect(Formatters.number.format(1000), '1K'),
      );

      test(
        'numberが1500の場合formattedNumberはString型の1.5Kである',
        () => expect(Formatters.number.format(1500), '1.5K'),
      );

      test(
        'numberが1750の場合formattedNumberはString型の1.8Kである',
        () => expect(Formatters.number.format(1750), '1.8K'),
      );

      test(
        'numberが1000000の場合formattedNumberはString型の1Mである',
        () => expect(Formatters.number.format(1000000), '1M'),
      );

      test(
        'numberが1000000000の場合formattedNumberはString型の1Bである',
        () => expect(Formatters.number.format(1000000000), '1B'),
      );
    });
  });
}
