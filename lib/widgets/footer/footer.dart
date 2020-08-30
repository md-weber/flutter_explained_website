import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_explained_website/constant.dart';
import 'package:flutter_explained_website/ui/screens/home_screen/navigation_bar.dart';
import 'package:flutter_explained_website/ui/widgets/max_width_container.dart';
import 'package:flutter_explained_website/widgets/footer/footer_columns.dart';
import 'package:flutter_explained_website/widgets/footer/social_media_bar.dart';

const kTwitterUrl = "https://twitter.com/flutter_exp";
const kYoutubeUrl = "https://www.youtube.com/c/FlutterExplained";
const kGitHubUrl = "https://github.com/md-weber";
const kBlogUrl = "https://dev.to/myracledesign";
const kFooterTextColor = Color(0xFFbebfc0);
const kFooterTextStyle = TextStyle(
  color: kFooterTextColor,
  letterSpacing: 1.25,
);

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 150),
      color: kFooterBackgroundColor,
      child: MaxWidthContainer(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32.0, top: 16.0),
          child: Column(
            children: [
              SocialMediaRow(),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(logoImagePath),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(child: FooterColumnLeft()),
                  const SizedBox(width: 10),
                  Expanded(child: FooterColumnCenter()),
                  const SizedBox(width: 10),
                  Expanded(child: FooterColumnRight())
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
