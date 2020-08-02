import "package:flutter/material.dart";
import 'package:flutter_explained_website/ui/screens/home_screen/home_content.dart';
import "package:flutter_explained_website/ui/screens/home_screen/navigation_bar.dart";
import "package:flutter_explained_website/ui/widgets/responsive_widget.dart";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ResponsiveWidget(
        largeScreen: Column(
          children: [
            NavigationBar(),
            HomeContent(),
          ],
        ),
      ),
    );
  }
}
