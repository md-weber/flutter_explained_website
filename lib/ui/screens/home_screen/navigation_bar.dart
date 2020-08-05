import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

// TODO: Implement if svg for web is there: https://github.com/dnfield/flutter_svg/issues/173
const String logoImagePath = kIsWeb
    ? "assets/assets/images/flutter_explained_logo.png"
    : "assets/images/flutter_explained_logo.png";

const navBarBoxDecoration = BoxDecoration(color: Color(0xFFFFFFFF), boxShadow: [
  BoxShadow(
    color: Color(0x14000000),
    blurRadius: 6,
    offset: Offset(0, 3),
  )
]);

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      height: 80,
      decoration: navBarBoxDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                logoImagePath,
                semanticLabel: "Flutter Explained Logo",
                height: 80,
                width: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Flutter Explained",
                  style: GoogleFonts.passionOne(
                    fontSize: 36,
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
