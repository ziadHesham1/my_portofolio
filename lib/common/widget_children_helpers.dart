import 'package:flutter/material.dart';

/// Wraps each widget in the list with a provided wrapper widget
List<Widget> wrapWithWidget(
  List<Widget> children,
  Widget Function(Widget) wrapper, {
  double space = 0,
  Axis direction = Axis.vertical,
}) {
  return addSpacingBetween(children.map(wrapper).toList(),
      space: space, direction: direction);
}

/// Wraps each widget in the list with an Expanded widget
List<Widget> wrapWithExpanded(
  List<Widget> children, {
  double space = 0,
  Axis direction = Axis.vertical,
}) {
  return wrapWithWidget(children, (child) => Expanded(child: child),
      space: space, direction: direction);
}

/// Adds spacing between widgets using SizedBox
List<Widget> addSpacingBetween(
  List<Widget> children, {
  double space = 0,
  Axis direction = Axis.vertical,
}) {
  if (space == 0) return children;

  final List<Widget> spacedChildren = [];
  for (int i = 0; i < children.length; i++) {
    spacedChildren.add(children[i]);
    if (i != children.length - 1) {
      spacedChildren.add(
        direction == Axis.vertical
            ? SizedBox(height: space)
            : SizedBox(width: space),
      );
    }
  }
  return spacedChildren;
}
