import 'package:flutter/material.dart';

class AppColorCodes {
  static const _accentColorCode = 0xffbcb0eb;
  static const _baseColorCode = 0xfff3f3f7;
  static const _mainColorCode = 0xffb0e5c6;
  static const _completeColorCode = 0xff2c7afd;
  static const _editColorCode = 0xff7bc043;
  static const _deleteColorCode = 0xfffe4a49;
  static const _boardColorCode = 0xffD4AD7A;
  static const _saturdayColorCode = 0xffe83316;
  static const _sundayColorCode = 0xff2168b7;
  static const _holidayColorCode = _sundayColorCode;
  static const _blackCode = 0xff1c1c1c;
  static const _grayCode = 0xffc0c0c0;
  static const _whiteCode = 0xffffffff;
  static const _redCode = 0xfff79196;
}

class AppColors {
  static const accentColor = Color(AppColorCodes._accentColorCode);
  static const baseColor = Color(AppColorCodes._baseColorCode);
  static const mainColor = Color(AppColorCodes._mainColorCode);
  static const completeColor = Color(AppColorCodes._completeColorCode);
  static const editColor = Color(AppColorCodes._editColorCode);
  static const deleteColor = Color(AppColorCodes._deleteColorCode);
  static const boardColor = Color(AppColorCodes._boardColorCode);
  static const saturdayColor = Color(AppColorCodes._saturdayColorCode);
  static const sundayColor = Color(AppColorCodes._sundayColorCode);
  static const holidayColor = Color(AppColorCodes._holidayColorCode);
  static const black = Color(AppColorCodes._blackCode);
  static const gray = Color(AppColorCodes._grayCode);
  static const white = Color(AppColorCodes._whiteCode);
  static const red = Color(AppColorCodes._redCode);
  static const appBarGradientColors = [mainColor, accentColor, red];
}

class AppMaterialColor {
  static const _primaryValue = AppColorCodes._mainColorCode;
  static const primary = MaterialColor(
    _primaryValue,
    {
      50: Color(0xFFF6FCF8),
      100: Color(0xFFE7F7EE),
      200: Color(0xFFD8F2E3),
      300: Color(0xFFC8EDD7),
      400: Color(0xFFBCE9CF),
      500: Color(_primaryValue),
      600: Color(0xFFA9E2C0),
      700: Color(0xFFA0DEB9),
      800: Color(0xFF97DAB1),
      900: Color(0xFF87D3A4),
    },
  );
}
