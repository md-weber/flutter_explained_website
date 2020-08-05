import 'package:flutter/material.dart';
import 'package:flutter_explained_website/utils/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';

const twitterUrl = "https://twitter.com/flutter_exp";
const youtubeUrl = "https://www.youtube.com/c/FlutterExplained";
const gitHubUrl = "https://github.com/md-weber";
const blogUrl = "https://dev.to/myracledesign";

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
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
              launchURL(youtubeUrl);
            },
          ),
          IconButton(
            icon: const Icon(Feather.twitter),
            color: const Color(0xFF0288D1),
            onPressed: () {
              launchURL(twitterUrl);
            },
          ),
          IconButton(
            icon: const Icon(Feather.github),
            color: const Color(0xFFFFFFFF),
            onPressed: () {
              launchURL(gitHubUrl);
            },
          ),
          IconButton(
            icon: const Icon(Feather.code),
            color: const Color(0xFF4CAF50),
            onPressed: () {
              launchURL(blogUrl);
            },
          )
        ],
      ),
    );
  }
}
