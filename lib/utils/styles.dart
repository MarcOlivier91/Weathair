import 'package:flutter/material.dart';

abstract class Styles {
  static Color textColor = const Color(0x008F9295);
  static Color color2 = const Color(0xA9CEF4);
  static Color color3 = const Color(0x36494E);
  static Color color4 = const Color(0x7EA0B7);
  static Color mainColor = const Color(0xffffff);
  static Color color6 = const Color(0xf2f2f2);
  static Color color7 = const Color(0x1a1a1a);
  static TextStyle primaryText = const TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);
  static TextStyle secondaryText = const TextStyle( fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);
  static TextStyle temperature = const TextStyle( fontSize: 44, fontWeight: FontWeight.bold, color: Colors.white);
  static TextStyle previsions = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87);
  static TextStyle previsionsWeekHeader = const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black87);

  static ThemeData lightTheme() {
    return ThemeData(
      scaffoldBackgroundColor: mainColor,
      );
    }
}


