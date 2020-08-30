import 'package:flutter/material.dart';
import 'package:flutter_explained_website/utils/url_launcher.dart';
import 'package:flutter_explained_website/widgets/footer/footer.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SocialMediaRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: const Icon(Feather.youtube),
          color: kFooterTextColor,
          onPressed: () {
            launchURL(kYoutubeUrl);
          },
        ),
        IconButton(
          icon: const Icon(Feather.twitter),
          color: kFooterTextColor,
          onPressed: () {
            launchURL(kTwitterUrl);
          },
        ),
        IconButton(
          icon: const Icon(Feather.github),
          color: kFooterTextColor,
          onPressed: () {
            launchURL(kGitHubUrl);
          },
        ),
        IconButton(
          icon: const Icon(Feather.code),
          color: kFooterTextColor,
          onPressed: () {
            launchURL(kBlogUrl);
          },
        )
      ],
    );
  }
}
