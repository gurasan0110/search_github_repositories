import 'package:flutter_test/flutter_test.dart';
import 'package:search_github_repositories/util/converters/updated_at_converter.dart';

void main() {
  group('UpdatedAtConverter', () {
    final converter = const UpdatedAtConverter();

    group('fromJson', () {
      test(
        'jsonが2025-01-01T00:00:00Zの場合updatedAtは2025年1月1日',
        () => expect(converter.fromJson('2025-01-01T00:00:00Z'), '2025年1月1日'),
      );
    });
  });
}
