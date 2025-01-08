import 'dart:ui';

import 'package:search_github_repositories/util/types.dart';

class AppColors {
  AppColors._();

  static const logo = Color(0xfff0f6fc);
  static const avatarBorder = Color(0x26ffffff);
  static const archiveLabelText = Color(0xffd29922);
  static const archiveLabelBorder = Color(0xff9e6a03);
  static const listTileAccentText = Color(0xff4493f8);
  static const listTileDefaultText = Color(0xfff0f6fc);
  static const listTileMuted = Color(0xff9198a1);
  static const listTileBorder = Color(0xff3d444d);

  static final language = AppColors._();

  late LanguageColors _languageColors;

  Color get(String name) {
    const defaultValue = 0xff9e6a03;
    final value = _languageColors[name] ?? defaultValue;
    return Color(value);
  }

  void set(LanguageColors languageColors) => _languageColors = languageColors;
}
