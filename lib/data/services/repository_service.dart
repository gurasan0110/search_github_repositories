import 'package:search_github_repositories/data/http_client.dart';
import 'package:search_github_repositories/logic/models/order.dart';
import 'package:search_github_repositories/logic/models/repository/repository.dart';
import 'package:search_github_repositories/logic/models/sort.dart';
import 'package:search_github_repositories/utility/types/json.dart';

class RepositoryService {
  const RepositoryService({required HttpClient client}) : _client = client;

  final HttpClient _client;

  Future<List<Repository>> searchRepositories({
    required String q,
    Sort? sort,
    Order? order,
    int? page,
  }) async {
    final response = await _client.get(
      '/search/repositories',
      queryParameters: {
        'q': q,
        'sort': (sort ?? Sort.bestMatch).name,
        'order': (order ?? Order.desc).name,
        'page': page ?? 1,
      },
    );
    final items = (response.data['items'] as List).cast<Json>();
    return items.map(Repository.fromJson).toList();
  }
}
