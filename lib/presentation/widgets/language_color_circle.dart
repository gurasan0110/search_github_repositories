import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/presentation/app_colors.dart';

class LanguageColorCircle extends ConsumerWidget {
  const LanguageColorCircle(this.name, {super.key});

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CircleAvatar(
      backgroundColor: AppColors.language.get(name),
      radius: 5,
    );
  }
}
