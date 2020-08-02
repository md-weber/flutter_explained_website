import 'package:flutter/material.dart';
import 'package:flutter_explained_website/theme.dart';
import 'package:flutter_explained_website/ui/screens/home_screen/home_screen.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Explained - Website',
      theme: WebsiteTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}
