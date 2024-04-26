// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

abstract class PortfolioColors {
  // Primary/main is used for 60% of the design. This neutral color gives room for the secondary and accent colors to stand out.
  static final Color primaryColor = Colors.green.withOpacity(0.3);
  // The secondary is used for 30% of the design. This is a middle ground that compliments the primary and accent colors.
  // When designing for a brand, this color tends to be the secondary color for the brand.
  static final Color secondaryColor = Colors.green.withOpacity(0.6);
  // The accent is used for 10% of the design. This helps ‘accessorize’ the site by giving pops of colors that keep the viewer’s attention.
  static const Color accentColor = Colors.green;

  static const Color white = Color(0xffFFFFFF);
  static const Color red = Colors.red;
  static const Color green = Colors.green;
  static const Color black = Color(0xff000000);
  static const Color light_grey = Color(0xffF2F2F7);
  static const Color dark_blue = Color(0xff666685);
  static const Color orange = Color(0xffFBB03B);

  static const Color grey = Color(0xffB2ABB2);
  static const Color hint_color = Color(0xff8F959E);
  static const Color transparent = Colors.transparent;
}
