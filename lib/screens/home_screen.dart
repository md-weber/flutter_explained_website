import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../frank_loading.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Explained"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Text(
                        "Welcome on that page!",
                        style: TextStyle(fontSize: 64.0),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Thanks for reading the article or watching the video!",
                        style: TextStyle(fontSize: 54.0),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: FrankLoadingSpinner(
                          bodyColor: Colors.lightBlue,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
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
                          _launchURL(
                            "https://www.youtube.com/watch?v=iHIhnALkFj0&list=PLq83k-ITj6lQyw2sCawoRNnSGKZYuuUYh",
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Feather.twitter),
                        color: Colors.lightBlue,
                        onPressed: () {
                          _launchURL(
                            "https://twitter.com/max_myracle",
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Feather.github),
                        color: Colors.white,
                        onPressed: () {
                          _launchURL(
                            "https://github.com/md-weber",
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Feather.code),
                        color: Colors.green,
                        onPressed: () {
                          _launchURL(
                            "https://dev.to/myracledesign",
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
