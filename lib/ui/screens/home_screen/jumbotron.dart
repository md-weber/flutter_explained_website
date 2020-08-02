import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Jumbotron extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 72.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TODO: Animated Text Kit
            FittedBox(
              child: Row(
                children: [
                  Text(
                    "Flutter ",
                    style: GoogleFonts.passionOne(fontSize: 48.0),
                  ),
                  RotateAnimatedTextKit(
                    text: const ["Developer", "YouTuber", "Enthusiast"],
                    textStyle: GoogleFonts.passionOne(fontSize: 48.0),
                    repeatForever: true,
                  )
                ],
              ),
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
      ),
    );
  }
}
