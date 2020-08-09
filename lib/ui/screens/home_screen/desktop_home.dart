import "package:flutter/material.dart";
import 'package:flutter_explained_website/ui/screens/home_screen/hero_image.dart';
import 'package:flutter_explained_website/ui/screens/home_screen/jumbotron.dart';

const kBackgroundDecoration = BoxDecoration(
  color: Color(0x00FFFFFF),
  image: DecorationImage(
    fit: BoxFit.contain,
    image: AssetImage("assets/images/bg-image.png"),
  ),
);

class DesktopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBackgroundDecoration,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 6, child: Jumbotron()),
          Expanded(flex: 8, child: HeroImage()),
        ],
      ),
    );
  }
}
