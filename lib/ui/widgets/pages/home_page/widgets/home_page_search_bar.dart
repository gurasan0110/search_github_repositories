import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/ui/widgets/pages/home_page/home_page_notifier.dart';
import 'package:search_github_repositories/ui/widgets/pages/home_page/widgets/home_page_menu_anchor.dart';
import 'package:search_github_repositories/util/extensions/listenable_extension.dart';

class HomePageSearchBar extends HookConsumerWidget
    implements PreferredSizeWidget {
  const HomePageSearchBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 16);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final (focusNode, hasFocus) = useFocusNode().select(
      (focusNode) => focusNode.hasFocus,
    );

    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Row(
        spacing: 10,
        children: [
          Flexible(
            child: SearchBar(
              controller: controller,
              focusNode: focusNode,
              hintText: 'リポジトリを検索',
              leading: HomePageMenuAnchor(),
              trailing: [
                IconButton(
                  onPressed: controller.clear,
                  icon: Icon(Icons.close),
                ),
              ],
              onSubmitted: ref.read(homePageNotifierProvider.notifier).setQ,
              elevation: WidgetStatePropertyAll(0),
              autoFocus: true,
              textInputAction: TextInputAction.search,
            ),
          ),
          if (hasFocus)
            IconButton(
              onPressed: focusNode.unfocus,
              icon: Icon(Icons.keyboard_hide),
            ),
        ],
      ),
    );
  }
}
