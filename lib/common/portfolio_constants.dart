// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../generated/l10n.dart';
import 'navigation/portfolio_navigator.dart';

abstract class PortfolioConstants {
  // Get the text theme from the current theme currentContext!.
  static final TextTheme text_theme = Theme.of(currentContext!).textTheme;

  // Padding constants for screen layouts.
  static final EdgeInsets portfolio_screen_padding =
      EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h);
  static final EdgeInsets accept_screen_padding =
      EdgeInsets.symmetric(horizontal: 40.w);
  static final EdgeInsets home_screen_padding =
      EdgeInsets.only(left: 15.w, right: 15.w, top: 5.h);
  static final EdgeInsets cart_screen_padding =
      EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h);

  // Constants for button height and border radius.
  static final portfolio_button_height = 40.h;
  static final portfolio_button_radius = 29.r;
  static final double verticalSpacing = 10.0.h;

  // Get the screen size, height, and width from the current currentContext!.
  static final Size portfolio_screen_size = MediaQuery.of(currentContext!).size;

  static final double portfolio_screen_height =
      MediaQuery.of(currentContext!).size.height;

  static final double portfolio_screen_width =
      MediaQuery.of(currentContext!).size.width;
  static final double rectangular_button_height = 50.h;

  static final bool isDesktop = MediaQuery.of(currentContext!).size.width > 600;

  static S localization() => S.of(currentContext!);

  static bool isCurrentLocaleArabic() {
    Locale? currentLocale = Localizations.localeOf(currentContext!);
    return currentLocale.languageCode.toLowerCase() == 'ar';
  }

  static String egpPriceText(num price) {
    String currency = localization().egp;
    return '${price.toStringAsFixed(2)} $currency';
  }
}
