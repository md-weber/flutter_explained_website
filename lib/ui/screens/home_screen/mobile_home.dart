import 'package:flutter/material.dart';
import 'package:flutter_explained_website/ui/screens/home_screen/hero_image.dart';
import 'package:flutter_explained_website/ui/screens/home_screen/jumbotron.dart';

class MobileHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeroImage(),
        Jumbotron(),
      ],
    );
  }
}
