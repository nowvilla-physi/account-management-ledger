import 'package:flutter/material.dart';

class AppColors {
  static const accentColor = Color(0xFF6237CF);
  static const mainColor = Color(0xFF9ACD32);
  static const baseColor = Color(0xFFF9F9F8);
  static const white = Color(0xFFFFFFFF);
  static const gray = Color(0xFFE5E6E4);
  static const black = Color(0xFF333333);
}

class AppMaterialColor {
  static const _primaryValue = 0xFF9ACD32;
  static const primary = MaterialColor(
    _primaryValue,
    {
      50: Color(0xFFF3F9E6),
      100: Color(0xFFE1F0C2),
      200: Color(0xFFCDE699),
      300: Color(0xFFB8DC70),
      400: Color(0xFFA9D551),
      500: Color(_primaryValue),
      600: Color(0xFF92C82D),
      700: Color(0xFF88C126),
      800: Color(0xFF7EBA1F),
      900: Color(0xFF6CAE13),
    },
  );
}
