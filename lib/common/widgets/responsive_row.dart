import 'package:flutter/material.dart';

import '../portfolio_constants.dart';

class ResponsiveRow extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;
  final int minRowWidth;
  const ResponsiveRow({
    super.key,
    required this.children,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
    required this.minRowWidth,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= minRowWidth) {
          return Column(
            mainAxisAlignment:
                mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
            children: children.reversed.toList(),
          );
        } else {
          return Row(
            mainAxisAlignment:
                mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
            children: children,
          );
        }
      },
    );
  }
}
