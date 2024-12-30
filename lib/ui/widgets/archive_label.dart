import 'package:flutter/material.dart';
import 'package:search_github_repositories/ui/app_colors.dart';

class ArchiveLabel extends StatelessWidget {
  const ArchiveLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.archiveLabelBorder),
        borderRadius: BorderRadius.circular(8.5),
      ),
      child: Text(
        'Public archive',
        style: TextStyle(
          color: AppColors.archiveLabelText,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
