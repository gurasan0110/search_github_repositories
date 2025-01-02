import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:search_github_repositories/logic/models/owner.dart';
import 'package:search_github_repositories/logic/models/owner_type.dart';
import 'package:search_github_repositories/ui/colors/app_colors.dart';

class Avatar extends StatelessWidget {
  const Avatar(this.owner, {super.key});

  final Owner owner;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(switch (owner.type) {
      OwnerType.user => 12,
      OwnerType.organization => 6,
    });

    return ClipRRect(
      borderRadius: borderRadius,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.avatarBorder),
          borderRadius: borderRadius,
        ),
        position: DecorationPosition.foreground,
        child: CachedNetworkImage(
          imageUrl: owner.avatarUrl,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
