import 'package:isar/isar.dart';
import 'package:search_github_repositories/data/repositories/search_history_repository/search_history_repository.dart';
import 'package:search_github_repositories/domain/models/search_history.dart';

class DefaultSearchHistoryRepository implements SearchHistoryRepository {
  DefaultSearchHistoryRepository({
    Isar? isar,
  }) : _isar = isar ?? Isar.getInstance()!;

  final Isar _isar;

  @override
  Stream<List<SearchHistory>> watch(String q) {
    return _isar.searchHistorys
        .filter()
        .qContains(q, caseSensitive: false)
        .and()
        .not()
        .qEqualTo(q)
        .sortBySearchedAtDesc()
        .watch(fireImmediately: true);
  }

  @override
  Future<int> put(SearchHistory searchHistory) {
    return _isar.writeTxn(() => _isar.searchHistorys.put(searchHistory));
  }

  @override
  Future<bool> delete(int id) {
    return _isar.writeTxn(() => _isar.searchHistorys.delete(id));
  }
}
