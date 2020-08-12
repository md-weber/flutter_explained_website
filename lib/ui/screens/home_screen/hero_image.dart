import "package:flutter/material.dart";
import 'package:lottie/lottie.dart';

class HeroImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Change Sizedbox depending on screensize
    return SizedBox(
      child: LottieBuilder.asset(
        "assets/lottie/mobile_homescreen.json",
        width: 500,
        height: 500,
      ),
    );
  }
}
