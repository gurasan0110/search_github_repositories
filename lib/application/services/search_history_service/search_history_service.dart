import 'package:search_github_repositories/domain/models/search_history.dart';

abstract class SearchHistoryService {
  const SearchHistoryService();

  Stream<List<SearchHistory>> watch(String q);

  Future<int> put(String q);

  Future<bool> delete(int id);
}
