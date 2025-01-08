import 'package:flutter/widgets.dart';
import 'package:search_github_repositories/gen/assets.gen.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.images.logo.image(width: 40, height: 40);
  }
}
