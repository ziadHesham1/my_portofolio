import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'portfolio_colors.dart';

class PortfolioTextTheme {
  static const double fontSize14 = 14;
  static const double fontSize16 = 16;
  static const double fontSize18 = 18;
  static const double fontSize22 = 22;
  static const double fontSize28 = 28;
  static const double fontSize40 = 40;

  TextTheme appTextThemes = TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 36.sp,
      color: PortfolioColors.accentColor,
    ),
    headlineMedium: TextStyle(
      fontSize: PortfolioTextTheme.fontSize22.sp,
      color: PortfolioColors.dark_blue,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(fontSize: 26.sp),
    displaySmall: TextStyle(fontSize: 24.sp),
    titleMedium: TextStyle(fontSize: PortfolioTextTheme.fontSize22.sp),
    headlineSmall: TextStyle(fontSize: 20.sp),
    titleSmall: TextStyle(fontSize: PortfolioTextTheme.fontSize18.sp),
    bodyLarge: TextStyle(fontSize: 16.sp),
    bodyMedium: TextStyle(fontSize: PortfolioTextTheme.fontSize14.sp),
    labelLarge: TextStyle(fontSize: 15.sp),
    labelMedium: TextStyle(fontSize: 13.sp),
    labelSmall: TextStyle(fontSize: 11.sp),
  );
}
