import 'package:search_github_repositories/application/services/search_history_service/search_history_service.dart';
import 'package:search_github_repositories/data/repositories/search_history_repository/default_search_history_repository.dart';
import 'package:search_github_repositories/data/repositories/search_history_repository/search_history_repository.dart';
import 'package:search_github_repositories/domain/models/search_history.dart';

class DefaultSearchHistoryService implements SearchHistoryService {
  DefaultSearchHistoryService({
    SearchHistoryRepository? repository,
  }) : _repository = repository ?? DefaultSearchHistoryRepository();

  final SearchHistoryRepository _repository;

  @override
  Stream<List<SearchHistory>> watch(String q) => _repository.watch(q);

  @override
  Future<int> put(String q) {
    final searchHistory = SearchHistory(q: q, searchedAt: DateTime.now());
    return _repository.put(searchHistory);
  }

  @override
  Future<bool> delete(int id) => _repository.delete(id);
}
