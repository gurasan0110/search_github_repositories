import 'package:flutter/material.dart';
import 'package:search_github_repositories/domain/models/search_history.dart';
import 'package:search_github_repositories/presentation/widgets/search_history_list/search_history_list_tile.dart';

class SearchHistoryListView extends StatelessWidget {
  const SearchHistoryListView(
    this.searchHistories, {
    super.key,
    required this.onTap,
    required this.onPressedDeleteButton,
  });

  final List<SearchHistory> searchHistories;
  final void Function(SearchHistory searchHistory) onTap;
  final void Function(int id) onPressedDeleteButton;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      itemBuilder: (context, index) {
        final searchHistory = searchHistories[index];
        return SearchHistoryListTile(
          searchHistory,
          onTap: onTap,
          onPressedDeleteButton: onPressedDeleteButton,
        );
      },
      itemCount: searchHistories.length,
    );
  }
}
