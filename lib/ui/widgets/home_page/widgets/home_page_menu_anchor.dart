import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/logic/models/order.dart';
import 'package:search_github_repositories/logic/models/sort.dart';
import 'package:search_github_repositories/ui/widgets/home_page/home_page_notifier.dart';

class HomePageMenuAnchor extends ConsumerWidget {
  const HomePageMenuAnchor({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MenuAnchor(
      menuChildren: [
        SubmenuButton(
          menuChildren: Sort.values.map((sort) {
            final isEqual = ref.watch(homePageNotifierProvider.select((s) {
              return s.queryParameters.sort == sort;
            }));

            return MenuItemButton(
              onPressed: () {
                ref.read(homePageNotifierProvider.notifier).setSort(sort: sort);
              },
              trailingIcon: isEqual ? Icon(Icons.check) : null,
              child: Text(sort.name),
            );
          }).toList(),
          child: Text('Sort'),
        ),
        SubmenuButton(
          menuChildren: Order.values.map((order) {
            final isEqual = ref.watch(homePageNotifierProvider.select((s) {
              return s.queryParameters.order == order;
            }));

            return MenuItemButton(
              onPressed: () {
                ref
                    .read(homePageNotifierProvider.notifier)
                    .setOrder(order: order);
              },
              trailingIcon: isEqual ? Icon(Icons.check) : null,
              child: Text(order.name),
            );
          }).toList(),
          child: Text('Order'),
        ),
      ],
      builder: (context, controller, child) {
        return IconButton(
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          icon: Icon(Icons.arrow_drop_down),
        );
      },
    );
  }
}
