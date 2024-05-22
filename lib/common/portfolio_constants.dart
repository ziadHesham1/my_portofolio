// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import 'navigation/portfolio_navigator.dart';

abstract class PortfolioConstants {
  static final List navbarKeys = List.generate(4, (index) => GlobalKey());

  static final List<({String label, IconData iconData})> actionLabels = [
    (label: 'Home', iconData: Icons.home_outlined),
    (label: 'About', iconData: Icons.info_outline_rounded),
    (label: 'Projects', iconData: Icons.work_outlined),
    (label: 'Contact', iconData: Icons.contact_page)
  ];
  // Get the text theme from the current theme currentContext!.
  static final TextTheme text_theme = Theme.of(currentContext!).textTheme;

  // Get the screen size, height, and width from the current currentContext!.
  static final Size portfolio_screen_size = MediaQuery.of(currentContext!).size;

  static double portfolio_screen_height() =>
      MediaQuery.of(currentContext!).size.height;

  static double portfolio_screen_width() =>
      MediaQuery.of(currentContext!).size.width;

  static bool isDesktop() => MediaQuery.of(currentContext!).size.width > 1000;

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
