import 'package:flutter/material.dart';

abstract class Styles {
  static Color textColor = const Color(0x008F9295);
  static Color sideBar = Color.fromARGB(255, 161, 181, 212);
  static Color color3 = const Color(0x36494EDE);
  static Color miniBoxes = Color.fromARGB(255, 197, 220, 255);
  static Color hourlyColumn = Color.fromARGB(125, 199, 217, 250);
  static Color mainColor = const Color(0xffffffff);
  static Color color6 = const Color(0xf2f2f2f2);
  static Color color7 = const Color(0xFF1a1a1a);
  static TextStyle primaryText = const TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 110, 110, 110));
  static TextStyle secondaryText = const TextStyle( fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 110, 110, 110));
  static TextStyle temperature = const TextStyle( fontSize: 44, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 54, 54, 54));
  static TextStyle previsions = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87);
  static TextStyle previsionsWeekHeader = const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black87);

  static ThemeData lightTheme() {
    return ThemeData(
      scaffoldBackgroundColor: mainColor,
      );
    }
}


