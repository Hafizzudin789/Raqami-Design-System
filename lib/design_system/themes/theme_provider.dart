import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {

  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  changeTheme(ThemeMode value) {
    _themeMode = value;
    notifyListeners();
  }
}