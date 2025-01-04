import 'package:flutter_test/flutter_test.dart';
import 'package:search_github_repositories/data/models/get_search_repositories_query_parameters.dart';

void main() {
  group('GetSearchRepositoriesQueryParameters', () {
    final queryParameters = GetSearchRepositoriesQueryParameters();

    test('toJson', () {
      final queryParametersJson = {
        'q': '',
        'sort': 'best match',
        'order': 'desc',
        'page': 1,
      };

      expect(queryParameters.toJson(), equals(queryParametersJson));
    });
  });
}
