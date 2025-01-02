import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_github_repositories/ui/colors/language_colors/language_colors.dart';

class LanguageColorCircle extends ConsumerWidget {
  const LanguageColorCircle(this.name, {super.key});

  final String name;

  static const defaultValue = 0xff9e6a03;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(languageColorsProvider)[name] ?? defaultValue;
    return CircleAvatar(backgroundColor: Color(value), radius: 5);
  }
}
