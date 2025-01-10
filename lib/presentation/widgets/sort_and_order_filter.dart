import 'package:flutter/material.dart';
import 'package:search_github_repositories/domain/models/order.dart';
import 'package:search_github_repositories/domain/models/sort.dart';
import 'package:search_github_repositories/gen/strings.g.dart';
import 'package:search_github_repositories/presentation/widgets/app_text.dart';

class SortAndOrderFilter extends StatelessWidget {
  const SortAndOrderFilter({
    super.key,
    required this.onPressed,
    required this.isChecked,
  });

  final void Function(Sort sort, Order order) onPressed;
  final bool Function(Sort sort, Order order) isChecked;

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      menuChildren: [
        for (final sort in Sort.values)
          for (final order in Order.values)
            if (sort != Sort.bestMatch || order == Order.desc)
              MenuItemButton(
                onPressed: () => onPressed(sort, order),
                trailingIcon: isChecked(sort, order) ? Icon(Icons.check) : null,
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
        onPressed: () {
          controller.isOpen ? controller.close() : controller.open();
        },
        icon: Icon(Icons.filter_list),
      ),
    );
  }
}
