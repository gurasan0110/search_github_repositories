import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/domain/models/order.dart';
import 'package:search_github_repositories/domain/models/sort.dart';
import 'package:search_github_repositories/gen/strings.g.dart';
import 'package:search_github_repositories/presentation/widgets/app_text.dart';
import 'package:search_github_repositories/presentation/widgets/pages/home_page/home_page_controller.dart';

class HomePageMenuAnchor extends ConsumerWidget {
  const HomePageMenuAnchor({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (setSort, setOrder) = ref.watch(homePageControllerProvider.select(
      (s) => (s.queryParameters.sort, s.queryParameters.order),
    ));

    return MenuAnchor(
      menuChildren: [
        for (final sort in Sort.values)
          for (final order in Order.values)
            if (sort != Sort.bestMatch || order == Order.desc)
              MenuItemButton(
                onPressed: () => ref
                    .read(homePageControllerProvider.notifier)
                    .setSortAndOrder(sort, order),
                trailingIcon: sort == setSort && order == setOrder
                    ? Icon(Icons.check)
                    : null,
                child: AppText(switch ((sort, order)) {
                  (Sort.bestMatch, _) => t.bestMatch,
                  (Sort.stars, Order.desc) => t.mostStars,
                  (Sort.stars, Order.asc) => t.fewestStars,
                  (Sort.forks, Order.desc) => t.mostForks,
                  (Sort.forks, Order.asc) => t.fewestForks,
                  (Sort.updated, Order.desc) => t.recentlyUpdated,
                  (Sort.updated, Order.asc) => t.leastRecentlyUpdated,
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
