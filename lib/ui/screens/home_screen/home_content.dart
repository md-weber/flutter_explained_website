import "package:flutter/material.dart";

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg-image.png"),
        ),
      ),
      width: double.infinity,
      height: double.infinity,
    );
  }
}
