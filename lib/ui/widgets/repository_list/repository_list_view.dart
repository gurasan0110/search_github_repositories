import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/logic/models/repository.dart';
import 'package:search_github_repositories/ui/widgets/repository_list/repository_list_tile.dart';

class RepositoryListView extends ConsumerWidget {
  const RepositoryListView({
    super.key,
    required List<Repository> repositories,
  }) : _repositories = repositories;

  final List<Repository> _repositories;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 16).copyWith(
        bottom: max(16, MediaQuery.of(context).padding.bottom),
      ),
      itemBuilder: (context, index) {
        final repository = _repositories[index];
        return RepositoryListTile(repository: repository);
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 16);
      },
      itemCount: _repositories.length,
    );
  }
}
