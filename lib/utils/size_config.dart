import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {
  static double _screenWidth;
  static double _screenHeight;
  static double _blockWidth = 0;
  static double _blockHeight = 0;

  /// FontSize depending on the width
  static double fontSizeMultiplier;
  static double textMultiplier;
  static double imageSizeMultiplier;
  static double heightMultiplier;
  static double widthMultiplier;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (_screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = false;
      isMobilePortrait = false;
    }
    _blockWidth = _screenWidth / 100;
    _blockHeight = _screenHeight / 100;
    fontSizeMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    textMultiplier = _blockHeight;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;
  }
}
