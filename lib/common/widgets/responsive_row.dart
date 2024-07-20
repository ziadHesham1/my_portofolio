import 'package:flutter/material.dart';

class ResponsiveRow extends StatelessWidget {
  final List<Widget> Function(bool isRow) childrenBuilder;
  final CrossAxisAlignment? rowCrossAxisAlignment;
  final MainAxisAlignment? rowMainAxisAlignment;
  final CrossAxisAlignment? columnCrossAxisAlignment;
  final MainAxisAlignment? columnMainAxisAlignment;
  final int minRowWidth;

  const ResponsiveRow({
    super.key,
    required this.childrenBuilder,
    this.rowCrossAxisAlignment,
    this.rowMainAxisAlignment,
    required this.minRowWidth,
    this.columnCrossAxisAlignment,
    this.columnMainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isRow = constraints.maxWidth > minRowWidth;
        return isRow
            ? Row(
                mainAxisAlignment:
                    rowMainAxisAlignment ?? MainAxisAlignment.spaceBetween,
                crossAxisAlignment:
                    rowCrossAxisAlignment ?? CrossAxisAlignment.center,
                children: childrenBuilder(isRow),
              )
            : Column(
                mainAxisAlignment:
                    columnMainAxisAlignment ?? MainAxisAlignment.spaceBetween,
                crossAxisAlignment:
                    columnCrossAxisAlignment ?? CrossAxisAlignment.center,
                children: childrenBuilder(isRow),
              );
      },
    );
  }
}
