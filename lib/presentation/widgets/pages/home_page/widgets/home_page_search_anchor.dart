import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/gen/strings.g.dart';
import 'package:search_github_repositories/presentation/widgets/app_text.dart';
import 'package:search_github_repositories/presentation/widgets/pages/home_page/home_page_controller.dart';
import 'package:search_github_repositories/presentation/widgets/pages/home_page/widgets/home_page_menu_anchor.dart';

class HomePageSearchAnchor extends HookConsumerWidget
    implements PreferredSizeWidget {
  const HomePageSearchAnchor({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 16);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useSearchController();
    final textEditingController = useTextEditingController();
    final focusNode = useFocusNode();

    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: SearchAnchor(
        searchController: searchController,
        viewBuilder: (_) => Consumer(builder: (context, ref, child) {
          final searchHistories = ref.watch(homePageControllerProvider.select(
            (s) => s.searchHistories,
          ));

          return ListView.builder(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            itemBuilder: (context, index) {
              final searchHistory = searchHistories[index];

              return ListTile(
                title: AppText(searchHistory.q, maxLines: 2),
                trailing: IconButton(
                  onPressed: () => ref
                      .read(homePageControllerProvider.notifier)
                      .delete(searchHistory.id),
                  icon: Icon(Icons.delete),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                onTap: () async {
                  searchController.text = searchHistory.q;
                  await ref
                      .read(homePageControllerProvider.notifier)
                      .listen(searchHistory.q);
                },
              );
            },
            itemCount: searchHistories.length,
          );
        }),
        viewLeading: IconButton(
          onPressed: () async {
            searchController.closeView(null);
            focusNode.unfocus();
            await ref.read(homePageControllerProvider.notifier).cancel();
          },
          icon: BackButtonIcon(),
        ),
        viewTrailing: [
          IconButton(
            onPressed: () {
              searchController.clear();
              ref.read(homePageControllerProvider.notifier).listen('');
            },
            icon: Icon(Icons.close),
          ),
          Consumer(builder: (context, ref, child) {
            final (setSort, setOrder) = ref.watch(
              homePageControllerProvider.select(
                (s) => (s.tempSort, s.tempOrder),
              ),
            );

            return HomePageMenuAnchor(
              onPressed: (sort, order) => ref
                  .read(homePageControllerProvider.notifier)
                  .setTempSortAndOrder(sort: sort, order: order),
              isChecked: (sort, order) => sort == setSort && order == setOrder,
            );
          }),
        ],
        viewHintText: t.searchRepositories,
        viewOnChanged: ref.read(homePageControllerProvider.notifier).listen,
        viewOnSubmitted: (q) async {
          searchController.closeView(null);
          textEditingController.text = q;
          focusNode.unfocus();
          await ref
              .read(homePageControllerProvider.notifier)
              .viewOnSubmitted(q);
        },
        builder: (context, controller) => SearchBar(
          controller: textEditingController,
          focusNode: focusNode,
          hintText: t.searchRepositories,
          leading: Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(Icons.search),
          ),
          trailing: [
            Consumer(builder: (context, ref, child) {
              final (setSort, setOrder) = ref.watch(
                homePageControllerProvider.select((s) {
                  final queryParameters = s.queryParameters;
                  return (queryParameters.sort, queryParameters.order);
                }),
              );

              return HomePageMenuAnchor(
                onPressed: (sort, order) => ref
                    .read(homePageControllerProvider.notifier)
                    .setSortAndOrder(sort: sort, order: order),
                isChecked: (sort, order) {
                  return sort == setSort && order == setOrder;
                },
              );
            }),
          ],
          onTap: () async {
            controller.text = textEditingController.text;
            controller.openView();
            focusNode.requestFocus();
            await ref.read(homePageControllerProvider.notifier).onTap();
          },
          elevation: WidgetStatePropertyAll(0),
        ),
        suggestionsBuilder: (context, controller) => const [],
        textInputAction: TextInputAction.search,
      ),
    );
  }
}
