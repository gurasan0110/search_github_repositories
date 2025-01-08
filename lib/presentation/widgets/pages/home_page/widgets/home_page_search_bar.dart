import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/gen/strings.g.dart';
import 'package:search_github_repositories/presentation/extensions/listenable_extension.dart';
import 'package:search_github_repositories/presentation/widgets/pages/home_page/home_page_controller.dart';
import 'package:search_github_repositories/presentation/widgets/pages/home_page/widgets/home_page_menu_anchor.dart';

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
              hintText: t.searchRepositories,
              leading: HomePageMenuAnchor(),
              trailing: [
                IconButton(
                  onPressed: controller.clear,
                  icon: Icon(Icons.close),
                ),
              ],
              onSubmitted: ref.read(homePageControllerProvider.notifier).setQ,
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
