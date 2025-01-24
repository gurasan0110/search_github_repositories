import 'package:flutter/material.dart';
import 'package:safe_edge_insets/safe_edge_insets.dart';
import 'package:search_github_repositories/domain/models/repository.dart';
import 'package:search_github_repositories/presentation/widgets/repository_list/repository_list_tile.dart';

class RepositoryListView extends StatelessWidget {
  const RepositoryListView(
    this.repositories, {
    super.key,
    this.controller,
    this.lastItem,
  });

  final List<Repository> repositories;
  final ScrollController? controller;
  final Widget? lastItem;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: controller,
      padding: SafeEdgeInsets(
        context,
        minimum: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      ),
      itemBuilder: (context, index) {
        if (index == repositories.length) return lastItem;
        return RepositoryListTile(repositories[index]);
      },
      separatorBuilder: (context, index) => SizedBox(height: 16),
      itemCount: repositories.length + (lastItem == null ? 0 : 1),
    );
  }
}
