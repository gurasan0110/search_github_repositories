import 'package:flutter_test/flutter_test.dart';
import 'package:search_github_repositories/logic/models/pagination.dart';

void main() {
  group('Pagination', () {
    group('maxPage', () {
      test('totalCountが30の場合1である', () {
        final pagination = const Pagination(totalCount: 30, items: []);
        expect(pagination.maxPage, 1);
      });

      test('totalCountが45の場合2である', () {
        final pagination = const Pagination(totalCount: 45, items: []);
        expect(pagination.maxPage, 2);
      });
    });
  });
}
