import 'package:flutter/material.dart';

abstract class AppColors {
  static final int _blackPrimaryValue = 0xFF000000;

  static final MaterialColor primaryBlack = MaterialColor(
    _blackPrimaryValue,
    <int, Color>{
      50: Color(0xFF4F4F4F),
      100: Color(0xFF484848),
      200: Color(0xFF414141),
      300: Color(0xFF3A3A3A),
      400: Color(0xFF333333),
      500: Color(0xFF2C2C2C),
      600: Color(0xFF242424),
      700: Color(0xFF1B1B1B),
      800: Color(0xFF101010),
      900: Color(_blackPrimaryValue),
    },
  );
}
