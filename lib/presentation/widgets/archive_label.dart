import 'package:flutter/material.dart';
import 'package:search_github_repositories/gen/strings.g.dart';
import 'package:search_github_repositories/presentation/app_colors.dart';
import 'package:search_github_repositories/presentation/widgets/app_text.dart';

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
      child: AppText(
        t.publicArchive,
        color: AppColors.archiveLabelText,
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
