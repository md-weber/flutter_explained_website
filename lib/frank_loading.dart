import 'package:flutter/material.dart';

class FrankLoadingSpinner extends StatefulWidget {
  final Color bodyColor;

  const FrankLoadingSpinner({Key key, this.bodyColor}) : super(key: key);

  @override
  _FrankLoadingSpinnerState createState() => _FrankLoadingSpinnerState();
}

class _FrankLoadingSpinnerState extends State<FrankLoadingSpinner>
    with TickerProviderStateMixin {
  AnimationController firstDotAnimationController;

  AnimationController secondDotAnimationController;

  AnimationController thirdDotAnimationController;

  @override
  void dispose() {
    firstDotAnimationController.dispose();
    secondDotAnimationController.dispose();
    thirdDotAnimationController.dispose();
    super.dispose();
  }

  Tween<Offset> firstTween = Tween<Offset>(
    begin: const Offset(0, 0),
    end: const Offset(0, -30),
  );

  Tween<Offset> secondTween = Tween<Offset>(
    begin: const Offset(0, 0),
    end: const Offset(0, -10),
  );

  Tween<Offset> thirdTween = Tween<Offset>(
    begin: const Offset(0, 0),
    end: const Offset(0, -15),
  );
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start;
  int counter = 0;

  @override
  void initState() {
    super.initState();
    firstDotAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    secondDotAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    thirdDotAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    firstDotAnimationController.repeat(reverse: true);

    Future.delayed(const Duration(milliseconds: 200)).then((value) {
      secondDotAnimationController.repeat(reverse: true);
      Future.delayed(const Duration(milliseconds: 100)).then((value) {
        thirdDotAnimationController.repeat(reverse: true);
      });
    });

    firstDotAnimationController.addStatusListener((status) {
      counter++;
      if (counter % 10 == 0) {
        setState(() {
          mainAxisAlignment = mainAxisAlignment == MainAxisAlignment.start
              ? MainAxisAlignment.end
              : MainAxisAlignment.start;
        });
      }
    });

    firstDotAnimationController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Transform.translate(
          offset: firstTween.animate(firstDotAnimationController).value,
          child: Container(
            height: 20,
            width: 20,
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.bodyColor,
            ),
          ),
        ),
        Transform.translate(
          offset: secondTween.animate(secondDotAnimationController).value,
          child: Container(
            height: 80,
            width: 80,
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.bodyColor,
            ),
            child: Row(
              mainAxisAlignment: mainAxisAlignment,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: thirdTween.animate(thirdDotAnimationController).value,
          child: Container(
            height: 20,
            width: 20,
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.bodyColor,
            ),
          ),
        )
      ],
    );
  }
}
