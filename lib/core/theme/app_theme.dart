import 'package:flutter/material.dart';
import 'package:texano/core/utils/app_colors.dart';

abstract class AppTheme {
  static final texanoTheme = ThemeData(
    primarySwatch: AppColors.primaryBlack,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
