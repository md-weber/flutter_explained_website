import 'package:flutter/material.dart';
import 'package:flutter_explained_website/constant.dart';
import 'package:flutter_explained_website/utils/url_launcher.dart';
import 'package:flutter_explained_website/widgets/footer/footer.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SocialMediaRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 320),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SocialMediaButton(
              url: kYoutubeUrl,
              icon: Feather.youtube,
              hoverColor: Colors.red,
            ),
            SocialMediaButton(
              icon: Feather.twitter,
              url: kTwitterUrl,
              hoverColor: Colors.lightBlueAccent,
            ),
            SocialMediaButton(
              icon: Feather.github,
              url: kGitHubUrl,
              hoverColor: Colors.white,
            ),
            SocialMediaButton(
              icon: Feather.code,
              url: kBlogUrl,
              hoverColor: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final ValueNotifier<bool> hovered = ValueNotifier(false);
  final String url;
  final IconData icon;
  final Color hoverColor;

  SocialMediaButton({
    @required this.url,
    @required this.icon,
    this.hoverColor = kHoverColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (isHovered) => hovered.value = isHovered,
      onTap: () {
        launchURL(url);
      },
      child: ValueListenableBuilder<bool>(
        valueListenable: hovered,
        builder: (context, isHovered, child) => Icon(
          icon,
          color: isHovered ? hoverColor : kFooterTextColor,
        ),
      ),
    );
  }
}
