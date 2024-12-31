import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
  });

  final String data;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
