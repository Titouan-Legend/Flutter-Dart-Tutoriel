/// Fichier dans lequel on stocke nos themes.
import 'package:flutter/material.dart';

class Themes {
  final ThemeData theme1 = ThemeData(
    primaryColor: Color(0xFFee6a59),
    fontFamily: "Quicksand",
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(primary: Color(0xFFf9ac67)),
    ),
  );
}
