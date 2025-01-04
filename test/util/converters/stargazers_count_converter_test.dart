import 'package:flutter_test/flutter_test.dart';
import 'package:search_github_repositories/util/converters/stargazers_count_converter.dart';

void main() {
  group('StargazersCountConverter', () {
    final converter = const StargazersCountConverter();

    group('fromJson', () {
      test(
        'jsonが500の場合stargazersCountはString型の500である',
        () => expect(converter.fromJson(500), '500'),
      );

      test(
        'jsonが1000の場合stargazersCountはString型の1Kである',
        () => expect(converter.fromJson(1000), '1K'),
      );

      test(
        'jsonが1500の場合stargazersCountはString型の1.5Kである',
        () => expect(converter.fromJson(1500), '1.5K'),
      );

      test(
        'jsonが1750の場合stargazersCountはString型の1.8Kである',
        () => expect(converter.fromJson(1750), '1.8K'),
      );

      test(
        'jsonが1000000の場合stargazersCountはString型の1Mである',
        () => expect(converter.fromJson(1000000), '1M'),
      );

      test(
        'jsonが1000000000の場合stargazersCountはString型の1Bである',
        () => expect(converter.fromJson(1000000000), '1B'),
      );
    });
  });
}
