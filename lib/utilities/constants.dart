import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  /// Initialize an empty constructor
  Constants.empty();

  /*
  TEXT STYLES
  */
  static const TextStyle boldTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );

  static const TextStyle titleStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 17,
  );

  /*
  BORDERS AND DECORATIONS
  */
  static BorderRadius borderRadius = BorderRadius.circular(8);
  static BoxDecoration kBoxDecoration = BoxDecoration(
    borderRadius: borderRadius,
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.black54,
        blurRadius: 3.0,
        offset: Offset(0, 2),
      ),
    ],
  );

  static BoxDecoration kAvatarDecoration = BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(width: 4),
  );

  /*
  THEMES
  */
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    // Take advantage of iOS native scroll animations
    platform: TargetPlatform.iOS,
    fontFamily: 'Lato',
    appBarTheme: appBarTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static AppBarTheme appBarTheme = AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: textTheme,
  );

  static TextTheme textTheme = GoogleFonts.latoTextTheme();
}
