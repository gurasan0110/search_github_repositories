import 'package:flutter_test/flutter_test.dart';
import 'package:search_github_repositories/gen/strings.g.dart';
import 'package:search_github_repositories/ui/formatters.dart';

void main() {
  group('formatters', () {
    group('updatedAtFormatter', () {
      final updatedAt = DateTime(2025);

      test(
        'updatedAtが2025年1月1日の場合formattedUpdatedAtは英語でString型のJan 1, 2025である',
        () async {
          await LocaleSettings.setLocale(AppLocale.en);
          expect(updatedAtFormatter.format(updatedAt), 'Jan 1, 2025');
        },
      );

      test(
        'updatedAtが2025年1月1日の場合formattedUpdatedAtは日本語でString型の2025年1月1日である',
        () async {
          await LocaleSettings.setLocale(AppLocale.ja);
          expect(updatedAtFormatter.format(updatedAt), '2025年1月1日');
        },
      );
    });

    group('numberFormatter', () {
      test(
        'numberが500の場合formattedNumberはString型の500である',
        () => expect(numberFormatter.format(500), '500'),
      );

      test(
        'numberが1000の場合formattedNumberはString型の1Kである',
        () => expect(numberFormatter.format(1000), '1K'),
      );

      test(
        'numberが1500の場合formattedNumberはString型の1.5Kである',
        () => expect(numberFormatter.format(1500), '1.5K'),
      );

      test(
        'numberが1750の場合formattedNumberはString型の1.8Kである',
        () => expect(numberFormatter.format(1750), '1.8K'),
      );

      test(
        'numberが1000000の場合formattedNumberはString型の1Mである',
        () => expect(numberFormatter.format(1000000), '1M'),
      );

      test(
        'numberが1000000000の場合formattedNumberはString型の1Bである',
        () => expect(numberFormatter.format(1000000000), '1B'),
      );
    });
  });
}
