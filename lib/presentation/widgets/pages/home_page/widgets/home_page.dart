import 'package:flutter/material.dart';
import 'package:search_github_repositories/presentation/widgets/logo.dart';
import 'package:search_github_repositories/presentation/widgets/pages/home_page/widgets/home_page_body.dart';
import 'package:search_github_repositories/presentation/widgets/pages/home_page/widgets/home_page_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Logo(),
        bottom: HomePageSearchBar(),
        centerTitle: true,
        forceMaterialTransparency: true,
      ),
      body: HomePageBody(),
    );
  }
}
