import "package:flutter/material.dart";
import 'package:flutter_explained_website/ui/screens/home_screen/home_content.dart';
import "package:flutter_explained_website/ui/screens/home_screen/navigation_bar.dart";
import 'package:flutter_explained_website/ui/widgets/max_width_container.dart';
import "package:flutter_explained_website/ui/widgets/responsive_widget.dart";
import 'package:flutter_explained_website/widgets/footer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        children: [
          NavigationBar(),
          Expanded(
            child: MaxWidthContainer(
              child: ResponsiveWidget(
                mobileBody: HomeContent(),
              ),
            ),
          ),
          MaxWidthContainer(child: Footer()),
        ],
      ),
    );
  }
}
