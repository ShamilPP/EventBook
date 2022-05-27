import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  Color? searchBackground = Colors.grey[800];
  Color? searchTextColor = Colors.grey;
  Color? iconColor = Colors.grey[300];
  Color? backgroundColor = Colors.grey[900];
  bool isDarkTheme = true;

  void setThemeMode() {
    if (isDarkTheme) {
      setLightTheme();
      themeMode = ThemeMode.light;
    } else {
      setDarkTheme();
      themeMode = ThemeMode.dark;
    }
    notifyListeners();
  }

  void setLightTheme() {
    searchBackground = Colors.grey[300];
    searchTextColor = Colors.grey[700];
    iconColor = Colors.grey[800];
    backgroundColor = Colors.grey[100];

    isDarkTheme = false;
  }

  void setDarkTheme() {
    searchBackground = Colors.grey[800];
    searchTextColor = Colors.grey;
    iconColor = Colors.grey[300];
    backgroundColor = Colors.grey[900];

    isDarkTheme = true;
  }
}
