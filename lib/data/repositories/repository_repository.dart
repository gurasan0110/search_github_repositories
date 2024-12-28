import 'package:search_github_repositories/data/services/repository_service.dart';
import 'package:search_github_repositories/logic/models/order.dart';
import 'package:search_github_repositories/logic/models/repository/repository.dart';
import 'package:search_github_repositories/logic/models/sort.dart';

class RepositoryRepository {
  const RepositoryRepository({
    required RepositoryService service,
  }) : _service = service;

  final RepositoryService _service;

  Future<List<Repository>> searchRepositories({
    required String q,
    Sort? sort,
    Order? order,
    int? page,
  }) {
    return _service.searchRepositories(
      q: q,
      sort: sort,
      order: order,
      page: page,
    );
  }
}
