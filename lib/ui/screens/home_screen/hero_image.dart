import "package:flutter/material.dart";
import 'package:flutter_explained_website/utils/size_config.dart';
import 'package:lottie/lottie.dart';

class HeroImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Change Sizedbox depending on screensize
    return SizedBox(
      child: LottieBuilder.asset(
        "assets/lottie/mobile_homescreen.json",
        height: 48 * SizeConfig.heightMultiplier,
      ),
    );
  }
}
