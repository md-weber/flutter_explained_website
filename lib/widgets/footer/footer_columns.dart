import 'package:flutter/material.dart';
import 'package:flutter_explained_website/ui/widgets/responsive_widget.dart';
import 'package:flutter_explained_website/widgets/footer/footer_text_widget.dart';

class FooterColumnLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        crossAxisAlignment:
            MediaQuery.of(context).size.width > kTabletBreakpoint
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FooterTextWidget("Platform"),
          FooterTextWidget("Help Center"),
          FooterTextWidget("Security")
        ],
      ),
    );
  }
}

class FooterColumnCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment:
            MediaQuery.of(context).size.width > kTabletBreakpoint
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
        children: [
          FooterTextWidget("Customers"),
          FooterTextWidget("Use Cases"),
          FooterTextWidget("Customer Service")
        ],
      ),
    );
  }
}

class FooterColumnRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment:
            MediaQuery.of(context).size.width > kTabletBreakpoint
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
        children: [
          FooterTextWidget("Company"),
          FooterTextWidget("About us"),
          FooterTextWidget("-")
        ],
      ),
    );
  }
}
