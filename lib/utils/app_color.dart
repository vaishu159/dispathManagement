import 'dart:ui';

import 'package:flutter/material.dart';

class AppColor {
  static bool isDarkMode = false;
  static Color grey = Colors.grey;
  static Color get primaryColor =>
      isDarkMode ? const Color(0xFFadadad) : const Color(0xFF1D365B);

  static Color get cardBackgroundColor =>
      isDarkMode ? const Color(0xFF21222D) : const Color(0xFFE0E0E0);

  static Color get backgroundColor =>
      isDarkMode ? const Color(0xFF15131C) : const Color(0xFFFFFFFF);

  static Color get splashBg =>
      isDarkMode ? const Color(0xFF15131C) : const Color(0xFF1D365B);

  static Color get selectionColor =>
      isDarkMode ? const Color(0xFFadadad) : const Color(0xFF88B2AC);

  static Color get textColor => isDarkMode ? Colors.white : Colors.black;

  static Color filterColor = Colors.red;
}
