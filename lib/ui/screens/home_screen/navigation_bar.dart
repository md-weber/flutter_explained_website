import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TODO: Implement if svg for web is there: https://github.com/dnfield/flutter_svg/issues/173
const String logoImagePath = kIsWeb
    ? 'assets/assets/images/flutter_explained_logo.png'
    : 'assets/images/flutter_explained_logo.png';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: const Color(0xFFFFFFFF), boxShadow: [
        BoxShadow(
          color: const Color(0x40000000),
          blurRadius: 6,
          offset: Offset(0, 3),
        )
      ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                logoImagePath,
                semanticLabel: 'Flutter Explained Logo',
                height: 80,
                width: 80,
              ),
              Text(
                "Flutter Explained",
                style: GoogleFonts.passionOne(
                  fontSize: 36,
                  color: const Color(0xFF707070),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
