import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/gen/strings.g.dart';
import 'package:search_github_repositories/ui/formatters.dart';
import 'package:search_github_repositories/ui/listenable_extension.dart';
import 'package:search_github_repositories/ui/widgets/app_text.dart';
import 'package:search_github_repositories/ui/widgets/pages/home_page/home_page_notifier.dart';
import 'package:search_github_repositories/ui/widgets/repository_list/repository_list_view.dart';

class HomePageBody extends HookConsumerWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      homePageNotifierProvider.select((s) => s.paginationState.exception),
      (_, exception) {
        final snackBar = SnackBar(content: AppText(exception.toString()));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );

    final isLoadingFirstPage = ref.watch(homePageNotifierProvider.select(
      (s) => s.paginationState.isLoadingFirstPage,
    ));

    if (isLoadingFirstPage) return Center(child: CircularProgressIndicator());

    final repositories = ref.watch(homePageNotifierProvider.select(
      (s) => s.paginationState.pagination?.items,
    ));

    if (repositories == null) return SizedBox.shrink();

    if (repositories.isEmpty) {
      return Center(child: AppText(t.yourSearchDidNotMatchAnyRepositories));
    }

    final (isLoadingNextPage, totalCount) = ref.watch(
      homePageNotifierProvider.select(
        (s) => (
          s.paginationState.isLoadingNextPage,
          s.paginationState.pagination!.totalCount,
        ),
      ),
    );

    final controller = useScrollController()
      ..listen((controller) async {
        if (controller.offset / controller.position.maxScrollExtent < .9) {
          return;
        }

        await ref
            .read(homePageNotifierProvider.notifier)
            .searchNextPageRepositories();
      });

    return RefreshIndicator(
      onRefresh: ref
          .read(homePageNotifierProvider.notifier)
          .researchFirstPageRepositories,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: AppText(
              t.results(totalCount: numberFormatter.format(totalCount)),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: RepositoryListView(
              repositories,
              controller: controller,
              lastItem: isLoadingNextPage
                  ? Center(child: CircularProgressIndicator())
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
