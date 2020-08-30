import 'package:flutter/material.dart';
import 'package:flutter_explained_website/constant.dart';
import 'package:flutter_explained_website/widgets/footer/social_media_bar.dart';
import 'footer_columns.dart';

class MobileFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32.0),
      color: kFooterBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
      child: Column(
        children: [
          SocialMediaRow(),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 1,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 2,
            children: [
              FooterColumnLeft(),
              FooterColumnCenter(),
              FooterColumnRight(),
            ],
          ),
        ],
      ),
    );
  }
}
