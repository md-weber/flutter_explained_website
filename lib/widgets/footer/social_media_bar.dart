import 'package:flutter/material.dart';
import 'package:flutter_explained_website/constant.dart';
import 'package:flutter_explained_website/utils/url_launcher.dart';
import 'package:flutter_explained_website/widgets/footer/footer.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SocialMediaRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 320),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            SocialMediaButton(
              url: kYoutubeUrl,
              icon: Feather.youtube,
              hoverColor: Colors.red,
            ),
            SocialMediaButton(
              icon: Feather.twitter,
              url: kTwitterUrl,
              hoverColor: Colors.lightBlueAccent,
            ),
            SocialMediaButton(
              icon: Feather.github,
              url: kGitHubUrl,
              hoverColor: Colors.white,
            ),
            SocialMediaButton(
              icon: Feather.code,
              url: kBlogUrl,
              hoverColor: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}

class SocialMediaButton extends StatefulWidget {
  final String url;
  final IconData icon;
  final Color hoverColor;

  const SocialMediaButton({
    @required this.url,
    @required this.icon,
    this.hoverColor = kHoverColor,
  });

  @override
  _SocialMediaButtonState createState() => _SocialMediaButtonState();
}

class _SocialMediaButtonState extends State<SocialMediaButton>
    with SingleTickerProviderStateMixin {
  final ValueNotifier<bool> hovered = ValueNotifier(false);

  AnimationController _animationController;
  ColorTween _colorTween;
  Animation<Color> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _colorTween = ColorTween(
      begin: kFooterTextColor,
      end: widget.hoverColor ?? kHoverColor,
    );

    _animation = _colorTween.animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (isHovered) {
        hovered.value = isHovered;
        if (isHovered) {
          _animationController.forward();
        } else {
          _animationController.reverse();
        }
      },
      onTap: () {
        launchURL(widget.url);
      },
      child: ValueListenableBuilder<bool>(
        valueListenable: hovered,
        builder: (context, isHovered, child) {
          return Icon(
            widget.icon,
            color: _animation.value,
          );
        },
      ),
    );
  }
}
