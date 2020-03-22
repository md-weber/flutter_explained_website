import 'package:flutter/material.dart';
import 'package:flutter_explained_website/utils/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(Feather.youtube),
            color: Color(0xFFFF0000),
            onPressed: () {
              launchURL(
                "https://www.youtube.com/c/FlutterExplained",
              );
            },
          ),
          IconButton(
            icon: Icon(Feather.twitter),
            color: Colors.lightBlue,
            onPressed: () {
              launchURL(
                "https://twitter.com/max_myracle",
              );
            },
          ),
          IconButton(
            icon: Icon(Feather.github),
            color: Colors.white,
            onPressed: () {
              launchURL(
                "https://github.com/md-weber",
              );
            },
          ),
          IconButton(
            icon: Icon(Feather.code),
            color: Colors.green,
            onPressed: () {
              launchURL(
                "https://dev.to/myracledesign",
              );
            },
          )
        ],
      ),
    );
  }
}
