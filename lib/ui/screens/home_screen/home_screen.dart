import "package:flutter/material.dart";
import 'package:flutter_explained_website/ui/screens/home_screen/desktop_home.dart';
import 'package:flutter_explained_website/ui/screens/home_screen/mobile_home.dart';
import "package:flutter_explained_website/ui/screens/home_screen/navigation_bar.dart";
import 'package:flutter_explained_website/ui/widgets/max_width_container.dart';
import "package:flutter_explained_website/ui/widgets/responsive_widget.dart";
import 'package:flutter_explained_website/widgets/footer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavigationBar(),
          Expanded(
            child: ResponsiveWidget(
              mobileBody: MobileHome(),
              tabletBody: MaxWidthContainer(child: DesktopHome()),
              desktopBody: MaxWidthContainer(child: DesktopHome()),
            ),
          ),
          MaxWidthContainer(child: Footer()),
        ],
      ),
    );
  }
}
