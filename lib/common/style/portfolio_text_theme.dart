import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'portfolio_colors.dart';

class PortfolioTextTheme {
  TextTheme appTextThemes = TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 36.sp,
      color: PortfolioColors.accentColor,
    ),
    headlineMedium: TextStyle(
      fontSize: 22.sp,
      color: PortfolioColors.dark_blue,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(fontSize: 26.sp),
    displaySmall: TextStyle(fontSize: 24.sp),
    titleMedium: TextStyle(fontSize: 22.sp),
    headlineSmall: TextStyle(fontSize: 20.sp),
    titleSmall: TextStyle(fontSize: 18.sp),
    bodyLarge: TextStyle(fontSize: 16.sp),
    bodyMedium: TextStyle(fontSize: 14.sp),
    labelLarge: TextStyle(fontSize: 15.sp),
    labelMedium: TextStyle(fontSize: 13.sp),
    labelSmall: TextStyle(fontSize: 11.sp),
  );
}
