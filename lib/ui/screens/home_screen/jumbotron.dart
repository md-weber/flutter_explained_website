import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:flutter_explained_website/utils/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class Jumbotron extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                "Flutter ",
                style: GoogleFonts.passionOne(
                    fontSize: 6 * SizeConfig.fontSizeMultiplier),
              ),
              RotateAnimatedTextKit(
                text: const ["Developer", "YouTuber", "Enthusiast"],
                textStyle: GoogleFonts.passionOne(
                    fontSize: 6 * SizeConfig.fontSizeMultiplier),
                repeatForever: true,
              )
            ],
          ),
          Text(
            "We can help you to create customized mobile applications for your business or integrate Flutter into your existing app.",
            style: GoogleFonts.montserrat(
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 16),
          FlatButton(
            onPressed: () {
              // TODO: Implement contact us button
            },
            color: const Color(0xFF0168AB),
            child: Text(
              "Contact us",
              style: GoogleFonts.montserrat(
                color: const Color(0xFFFFFFFF),
              ),
            ),
          )
        ],
      ),
    );
  }
}
