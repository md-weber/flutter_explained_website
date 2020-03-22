import 'package:flutter/material.dart';
import 'package:flutter_explained_website/screens/home_screen/home_screen.dart';
import 'package:storyblok_client/storyblok_client.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
