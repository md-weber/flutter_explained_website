import 'package:flutter/material.dart';
import 'package:flutter_explained_website/constant.dart';
import 'package:flutter_explained_website/utils/url_launcher.dart';
import 'package:flutter_explained_website/widgets/footer/footer.dart';

class FooterTextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextStyle hoverStyle;
  final String url;
  final ValueNotifier<bool> isHoveredNotifier = ValueNotifier(false);

  FooterTextWidget(this.text, {this.style, this.hoverStyle, this.url});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (isHovered) {
        isHoveredNotifier.value = isHovered;
      },
      onTap: () {
        launchURL(url ?? "https://www.buymeacoffee.com/flutterexp");
      },
      child: ValueListenableBuilder<bool>(
        valueListenable: isHoveredNotifier,
        builder: (context, bool isHovered, child) {
          return isHovered
              ? Text(text, style: hoverStyle ?? kHoverTextStyle)
              : Text(text, style: style ?? kFooterTextStyle);
        },
      ),
    );
  }
}
