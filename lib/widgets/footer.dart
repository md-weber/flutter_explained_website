import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_explained_website/ui/screens/home_screen/navigation_bar.dart';
import 'package:flutter_explained_website/ui/widgets/max_width_container.dart';
import 'package:flutter_explained_website/utils/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';

const kTwitterUrl = "https://twitter.com/flutter_exp";
const kYoutubeUrl = "https://www.youtube.com/c/FlutterExplained";
const kGitHubUrl = "https://github.com/md-weber";
const kBlogUrl = "https://dev.to/myracledesign";
const kFooterBackgroundColor = Color(0xFF27282c);
const kFooterTextColor = Color(0xFFbebfc0);
const kFooterTextStyle = TextStyle(color: kFooterTextColor);

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 150),
      color: kFooterBackgroundColor,
      child: MaxWidthContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          FooterTextWidget("Platform"),
                          FooterTextWidget("Help Center"),
                          FooterTextWidget("Security")
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          FooterTextWidget("Customers"),
                          FooterTextWidget("Use Cases"),
                          FooterTextWidget("Customer Service")
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          FooterTextWidget("Company"),
                          FooterTextWidget("About us"),
                          FooterTextWidget("-")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterTextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  final String url;

  const FooterTextWidget(this.text, {this.style, this.url});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchURL(url ?? "https://www.buymeacoffee.com/flutterexp");
      },
      child: Text(text, style: style ?? kFooterTextStyle),
    );
  }
}

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
