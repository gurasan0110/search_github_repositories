import 'package:flutter/material.dart';
import 'package:search_github_repositories/gen/assets.gen.dart';
import 'package:search_github_repositories/ui/app_colors.dart';
import 'package:search_github_repositories/util/extensions/color_extension.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.images.logo.svg(
      width: 32,
      height: 32,
      colorFilter: AppColors.logo.filter,
    );
  }
}
