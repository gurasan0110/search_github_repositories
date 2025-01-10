import 'package:isar/isar.dart';

part 'search_history.g.dart';

@collection
class SearchHistory {
  SearchHistory({required this.q, required this.searchedAt});

  @Index(unique: true, replace: true)
  final String q;

  final DateTime searchedAt;

  Id id = Isar.autoIncrement;
}
