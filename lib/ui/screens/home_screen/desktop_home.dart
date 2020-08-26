import "package:flutter/material.dart";
import 'package:flutter_explained_website/ui/screens/home_screen/hero_image.dart';
import 'package:flutter_explained_website/ui/screens/home_screen/jumbotron.dart';
import 'package:flutter_explained_website/utils/size_config.dart';

const kBackgroundDecoration = BoxDecoration(
  color: Color(0x00FFFFFF),
);

class DesktopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBackgroundDecoration,
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 80 * SizeConfig.heightMultiplier,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 6, child: Jumbotron()),
                Expanded(flex: 8, child: HeroImage()),
              ],
            ),
          ),
          const Text("Hello World")
        ],
      ),
    );
  }
}
