import 'package:flutter/material.dart';

/// Fichier dans lequel on va mettre les différents thème visuels de l'application
///

class Themes {
  static InputBorder borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(
    Radius.circular(10),
  ));

  final theme1 = ThemeData(
    primaryColor: Color(0xFF000000),
    fontFamily: "Quicksand",
    inputDecorationTheme: InputDecorationTheme(
        border: borderStyle, focusedBorder: borderStyle), //, filled: true, fillColor: Color(0xFFECE6CD)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(primary: Color(0xFFF9AC67)),
    ),
    //scaffoldBackgroundColor: Color(0xFFECE6CD),
  );
}
