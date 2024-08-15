import "package:flutter/material.dart";
import "package:note_app/theme/theme.dart";

class ThemeProvider extends ChangeNotifier {
  //Initially, theme is light mode
  ThemeData _themeData = lightMode;

  //getter to get the theme
  ThemeData getTheme() => _themeData;

  // getter method to see if we are in dark mode or not
  bool get isDarkMode => _themeData == darkMode;

  //setter method to set the new theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  //function to toggle between light and dark mode
  void toggleTheme() {
    if (_themeData == lightMode) {
      _themeData = darkMode;
    } else {
      _themeData = lightMode;
    }
    notifyListeners();
  }
}
