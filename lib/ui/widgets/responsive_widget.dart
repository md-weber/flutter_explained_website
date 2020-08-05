import "package:flutter/material.dart";

const largeScreenBreakPoint = 1280;
const smallScreenBreakPoint = 680;

class ResponsiveWidget extends StatelessWidget {
  final Widget smallScreen;
  final Widget tabletScreen;
  final Widget largeScreen;

  const ResponsiveWidget(
      {Key key, this.smallScreen, this.tabletScreen, this.largeScreen})
      : super(key: key);

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > largeScreenBreakPoint;
  }

  static bool isTableScreen(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth < largeScreenBreakPoint &&
        screenWidth > smallScreenBreakPoint;
  }

  static bool isMobileScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < smallScreenBreakPoint;
  }

  @override
  Widget build(BuildContext context) {
    if (isMobileScreen(context) && smallScreen != null) {
      return smallScreen;
    } else if (isTableScreen(context) && tabletScreen != null) {
      return tabletScreen;
    } else {
      return largeScreen;
    }
  }
}
