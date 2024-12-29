import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/ui/widgets/home_page/home_page_notifier.dart';

class HomePageBody extends ConsumerWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(homePageNotifierProvider.select((s) {
      return s.repositories.exception;
    }), (_, exception) {
      if (exception != null) {
        final snackBar = SnackBar(content: Text(exception.toString()));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    });

    final isLoading = ref.watch(homePageNotifierProvider.select((s) {
      return s.repositories.isLoading;
    }));

    if (isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    final repositories = ref.watch(homePageNotifierProvider.select((s) {
      return s.repositories.value;
    }));

    if (repositories == null) {
      return SizedBox.shrink();
    }

    if (repositories.isEmpty) {
      return Center(child: Text('検索結果はどのリポジトリにも一致しませんでした'));
    }

    return ListView.builder(
      itemBuilder: (context, index) {
        final repository = repositories[index];
        return ListTile(title: Text(repository.name));
      },
      itemCount: repositories.length,
    );
  }
}
