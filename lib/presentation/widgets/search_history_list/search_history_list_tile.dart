import 'package:flutter/material.dart';
import 'package:search_github_repositories/domain/models/search_history.dart';
import 'package:search_github_repositories/presentation/widgets/app_text.dart';

class SearchHistoryListTile extends StatelessWidget {
  const SearchHistoryListTile(
    this.searchHistory, {
    super.key,
    required this.onTap,
    required this.onPressedDeleteButton,
  });

  final SearchHistory searchHistory;
  final void Function(SearchHistory searchHistory) onTap;
  final void Function(int id) onPressedDeleteButton;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AppText(searchHistory.q, maxLines: 2),
      trailing: IconButton(
        onPressed: () => onPressedDeleteButton(searchHistory.id),
        icon: Icon(Icons.delete),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      onTap: () => onTap(searchHistory),
    );
  }
}
