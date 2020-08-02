import 'package:flutter/material.dart';

class WebsiteTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: ThemeData.light().textTheme.copyWith(),
  );
}
