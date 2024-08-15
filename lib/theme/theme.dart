import 'package:flutter/material.dart';

// light mode
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Colors.grey.shade300,
    secondary: Colors.grey.shade200,
    onPrimary: Colors.grey.shade400,
    onSecondary: Colors.white,
    inversePrimary: Colors.grey.shade800,
  ),
);

// dark mode
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: Colors.blue,
    secondary: Colors.green,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    inversePrimary: Colors.grey.shade800,
  ),
);
