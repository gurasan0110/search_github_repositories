import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/ui/widgets/home_page/home_page_notifier.dart';
import 'package:search_github_repositories/ui/widgets/home_page/widgets/home_page_menu_anchor.dart';

class HomePageSearchBar extends HookConsumerWidget
    implements PreferredSizeWidget {
  const HomePageSearchBar({super.key});

  @override
  Size get preferredSize {
    return Size.fromHeight(kToolbarHeight);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SearchBar(
        controller: controller,
        hintText: 'リポジトリを検索',
        leading: HomePageMenuAnchor(),
        trailing: [
          IconButton(
            onPressed: () {
              controller.clear();
            },
            icon: Icon(Icons.close),
          ),
        ],
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
        onSubmitted: (q) {
          ref.read(homePageNotifierProvider.notifier).setQ(q: q);
        },
        elevation: WidgetStatePropertyAll(0),
        autoFocus: true,
        textInputAction: TextInputAction.search,
      ),
    );
  }
}
