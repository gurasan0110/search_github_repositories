import 'package:flutter/material.dart';
import 'package:search_github_repositories/ui/widgets/app_icon.dart';
import 'package:search_github_repositories/ui/widgets/home_page/widgets/home_page_body.dart';
import 'package:search_github_repositories/ui/widgets/home_page/widgets/home_page_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppIcon(),
        bottom: HomePageSearchBar(),
        forceMaterialTransparency: true,
      ),
      body: HomePageBody(),
    );
  }
}
