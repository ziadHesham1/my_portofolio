import 'package:flutter/material.dart';

import '../portfolio_constants.dart';

class ResponsiveRow extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;
  final bool? enable;
  const ResponsiveRow({
    super.key,
    required this.children,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
    this.enable,
  });

  @override
  Widget build(BuildContext context) {
    if (enable ?? !PortfolioConstants.isDesktop()) {
      return Column(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        children: children.reversed.toList(),
      );
    } else {
      return Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        children: children,
      );
    }
  }
}
