import 'package:flutter/material.dart';
import 'package:mobile/constants/styles/styles.dart';

ThemeData get defaultThemeData {
  ThemeData _defaultThemeData;
  if (_defaultThemeData == null) {
    _defaultThemeData = ThemeData(
      backgroundColor: THOR_COLOR_WHITE,
      scaffoldBackgroundColor: THOR_COLOR_WHITE,
      primaryColor: THOR_COLOR_PRIMARY_YELLOW,
      primarySwatch: Colors.yellow,
      textTheme: defaultTextThemeData,
    );
  }
  return _defaultThemeData;
}

TextTheme _defaultTextThemeData;
TextTheme get defaultTextThemeData {
  if (_defaultTextThemeData == null) {
    _defaultTextThemeData = TextTheme(
      headline1: TextStyle(
        fontFamily: THOR_FONT_FAMILY[0],
        fontFamilyFallback: THOR_FONT_FAMILY,
        fontWeight: THOR_FONT_WEIGHT_BOLD,
        fontSize: THOR_FONT_SIZE_HEADLINE_1,
        color: THOR_COLOR_WHITE,
      ),
      headline2: TextStyle(
        fontFamily: THOR_FONT_FAMILY[0],
        fontFamilyFallback: THOR_FONT_FAMILY,
        fontWeight: THOR_FONT_WEIGHT_BOLD,
        fontSize: THOR_FONT_SIZE_HEADLINE_2,
        color: THOR_COLOR_BLACK,
      ),
      bodyText1: TextStyle(
        fontFamily: THOR_FONT_FAMILY[0],
        fontFamilyFallback: THOR_FONT_FAMILY,
        fontWeight: THOR_FONT_WEIGHT_BOLD,
        fontSize: THOR_FONT_SIZE_LARGE,
        color: THOR_COLOR_BLACK,
      ),
      bodyText2: TextStyle(
        fontFamily: THOR_FONT_FAMILY[0],
        fontFamilyFallback: THOR_FONT_FAMILY,
        fontWeight: THOR_FONT_WEIGHT_REGULAR,
        fontSize: THOR_FONT_SIZE_BASE,
        color: THOR_COLOR_BLACK,
      ),
       button: TextStyle(
        fontFamily: THOR_FONT_FAMILY[0],
        fontFamilyFallback: THOR_FONT_FAMILY,
        fontWeight: THOR_FONT_WEIGHT_REGULAR,
        fontSize: THOR_FONT_SIZE_HEADLINE_5,
        color: THOR_COLOR_BLACK,
      ),
    );
  }
  return _defaultTextThemeData;
}
