import 'package:flutter/material.dart';

import 'portfolio_button_interface.dart';

//
class PortfolioElevatedButton extends IPortfolioButton {
  final String text;
  final bool isLightMode;
  final bool hasBorder;
  final TextStyle? textStyle;
  final double? radius;
  final EdgeInsetsGeometry? textPadding;
  final OutlinedBorder? shape;

  const PortfolioElevatedButton({
    required super.onPressed,
    super.disabled,
    required this.text,
    this.hasBorder = false,
    this.isLightMode = false,
    super.width,
    super.height,
    super.color,
    this.textStyle,
    this.radius,
    this.textPadding,
    this.shape,
  });
}

class PortfolioTextButton extends IPortfolioButton {
  // final String? leadingText;
  final String buttonLabel;
  final bool hasUnderline;
  final TextStyle? buttonStyle;
  final Widget? widget;
  //final BuildContext context;

  const PortfolioTextButton({
    // this.leadingText,
    required super.onPressed,
    required this.buttonLabel,
    super.color,
    this.hasUnderline = false,
    this.buttonStyle,
    this.widget,
    super.disabled,
    super.width,
    super.height,
    //required this.context,
  });
}

class PortfolioContainerButton extends IPortfolioButton {
  final Widget child;
  final bool hasBorder;
  final double? borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const PortfolioContainerButton({
    required this.child,
    required super.onPressed,
    this.hasBorder = false,
    super.width,
    super.height,
    super.color,
    this.borderRadius,
    this.margin,
    this.padding,
  });
}

class PortfolioIconButton extends IPortfolioButton {
  final Widget icon;
  final EdgeInsetsGeometry? padding;
  final bool isLightMode;
  final bool hasBorder;
  final bool isContainer;

  const PortfolioIconButton({
    this.isContainer = false,
    required super.onPressed,
    required this.icon,
    this.isLightMode = false,
    this.hasBorder = true,
    super.width,
    super.height,
    this.padding,
    super.color,
    super.disabled,
  });
}

class PortfolioElevatedButtonWithIcon extends IPortfolioButton {
  final Widget icon;
  final String text;
  final bool leftIcon;
  final bool isLightMode;

  const PortfolioElevatedButtonWithIcon({
    required this.icon,
    required super.onPressed,
    required this.text,
    this.leftIcon = false,
    this.isLightMode = true,
    super.disabled,
    super.width,
    super.height,
    super.color,
  });
}

class PortfolioCartButton extends IPortfolioButton {
  final int number;
  final dynamic Function()? addOnPressed;
  final dynamic Function()? removeOnPressed;

  const PortfolioCartButton({
    this.addOnPressed,
    this.removeOnPressed,
    required super.onPressed,
    required this.number,
    super.disabled,
  });
}

class PortfolioAddRemoveButton extends IPortfolioButton {
  final dynamic Function() addButtonFunction;
  final dynamic Function() subtractButtonFunction;
  final int count;

  const PortfolioAddRemoveButton({
    required this.count,
    required this.addButtonFunction,
    required this.subtractButtonFunction,
    required super.onPressed,
    super.disabled,
    super.width,
    super.height,
    super.color,
  });
}
