import 'package:flutter/material.dart';

extension ColorExtension on Color {
  ColorFilter get filter => ColorFilter.mode(this, BlendMode.srcIn);
}
