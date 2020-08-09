import 'package:flutter/widgets.dart';

class MaxWidthContainer extends StatelessWidget {
  final double maxWidth;
  final Widget child;

  const MaxWidthContainer({Key key, this.maxWidth = 1200, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
        ),
        child: child,
      ),
    );
  }
}
