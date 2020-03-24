import 'package:flutter/material.dart';
import 'package:flutter_explained_website/screens/home_screen/widgets/interview_row.dart';
import 'package:flutter_explained_website/widgets/footer.dart';

import '../../frank_loading.dart';

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
                        "Welcome to Flutter Explained",
                        style: TextStyle(fontSize: 64.0),
                        textAlign: TextAlign.center,
                      ),
                      InterviewRow(),
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: FrankLoadingSpinner(
                          bodyColor: Colors.lightBlue,
                        ),
                      ),
                    ],
                  ),
                ),
                Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
