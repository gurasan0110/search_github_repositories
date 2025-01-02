import 'package:flutter/material.dart';
import 'package:search_github_repositories/logic/models/repository.dart';
import 'package:search_github_repositories/ui/colors/app_colors.dart';
import 'package:search_github_repositories/ui/widgets/app_text.dart';
import 'package:search_github_repositories/ui/widgets/archive_label.dart';
import 'package:search_github_repositories/ui/widgets/avatar.dart';
import 'package:search_github_repositories/ui/widgets/language_color_circle.dart';
import 'package:search_github_repositories/util/extensions/iterable_extension.dart';
import 'package:url_launcher/url_launcher.dart';

class RepositoryListTile extends StatelessWidget {
  const RepositoryListTile(this.repository, {super.key});

  final Repository repository;

  @override
  Widget build(BuildContext context) {
    final owner = repository.owner;
    final description = repository.description;
    final language = repository.language;

    return InkWell(
      onTap: () => launchUrl(repository.htmlUrl),
      borderRadius: BorderRadius.circular(6),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.listTileBorder),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4,
          children: [
            Row(
              spacing: 10,
              children: [
                if (owner != null) Avatar(owner),
                Expanded(
                  child: AppText(
                    repository.fullName,
                    color: AppColors.listTileAccentText,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    maxLines: 2,
                  ),
                ),
                if (repository.archived) ArchiveLabel(),
              ],
            ),
            if (description != null)
              AppText(
                description,
                color: AppColors.listTileDefaultText,
                maxLines: 3,
              ),
            DefaultTextStyle(
              style: TextStyle(color: AppColors.listTileMuted, fontSize: 12),
              child: Wrap(
                runSpacing: 4,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  if (language != null)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 6,
                      children: [
                        LanguageColorCircle(language),
                        AppText(language),
                      ],
                    ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.star_outline,
                        size: 16,
                        color: AppColors.listTileMuted,
                      ),
                      AppText(repository.stargazersCount),
                    ],
                  ),
                  AppText('Updated on ${repository.updatedAt}'),
                ].intersperse(AppText('・')).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
