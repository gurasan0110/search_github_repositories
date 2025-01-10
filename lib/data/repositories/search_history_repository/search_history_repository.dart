import 'package:search_github_repositories/domain/models/search_history.dart';

abstract class SearchHistoryRepository {
  const SearchHistoryRepository();

  Stream<List<SearchHistory>> watch(String q);

  Future<int> put(SearchHistory searchHistory);

  Future<bool> delete(int id);
}
