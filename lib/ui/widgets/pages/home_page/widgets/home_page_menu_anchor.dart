import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/logic/models/order.dart';
import 'package:search_github_repositories/logic/models/sort.dart';
import 'package:search_github_repositories/ui/widgets/app_text.dart';
import 'package:search_github_repositories/ui/widgets/pages/home_page/home_page_notifier.dart';

class HomePageMenuAnchor extends ConsumerWidget {
  const HomePageMenuAnchor({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (setSort, setOrder) = ref.watch(homePageNotifierProvider.select(
      (s) => (s.queryParameters.sort, s.queryParameters.order),
    ));

    return MenuAnchor(
      menuChildren: [
        for (final sort in Sort.values)
          for (final order in Order.values)
            if (sort != Sort.bestMatch || order == Order.desc)
              MenuItemButton(
                onPressed: () => ref
                    .read(homePageNotifierProvider.notifier)
                    .setSortAndOrder(sort, order),
                trailingIcon: sort == setSort && order == setOrder
                    ? Icon(Icons.check)
                    : null,
                child: AppText(switch ((sort, order)) {
                  (Sort.bestMatch, _) => 'Best match',
                  (Sort.stars, Order.desc) => 'Most stars',
                  (Sort.stars, Order.asc) => 'Fewest stars',
                  (Sort.forks, Order.desc) => 'Most forks',
                  (Sort.forks, Order.asc) => 'Fewest forks',
                  (Sort.updated, Order.desc) => 'Recently updated',
                  (Sort.updated, Order.asc) => 'Least recently updated',
                }),
              ),
      ],
      builder: (context, controller, child) => IconButton(
        onPressed: controller.isOpen ? controller.close : controller.open,
        icon: Icon(Icons.arrow_drop_down),
      ),
    );
  }
}
