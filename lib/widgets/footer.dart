import 'package:flutter/material.dart';
import 'package:flutter_explained_website/utils/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';

const kTwitterUrl = "https://twitter.com/flutter_exp";
const kYoutubeUrl = "https://www.youtube.com/c/FlutterExplained";
const kGitHubUrl = "https://github.com/md-weber";
const kBlogUrl = "https://dev.to/myracledesign";
const kFooterBackgroundColor = Color(0xFF27282c);

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kFooterBackgroundColor,
      margin: const EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: const Icon(Feather.youtube),
            color: const Color(0xFFFF0000),
            onPressed: () {
              launchURL(kYoutubeUrl);
            },
          ),
          IconButton(
            icon: const Icon(Feather.twitter),
            color: const Color(0xFF0288D1),
            onPressed: () {
              launchURL(kTwitterUrl);
            },
          ),
          IconButton(
            icon: const Icon(Feather.github),
            color: const Color(0xFFFFFFFF),
            onPressed: () {
              launchURL(kGitHubUrl);
            },
          ),
          IconButton(
            icon: const Icon(Feather.code),
            color: const Color(0xFF4CAF50),
            onPressed: () {
              launchURL(kBlogUrl);
            },
          )
        ],
      ),
    );
  }
}
