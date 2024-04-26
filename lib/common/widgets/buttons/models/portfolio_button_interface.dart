//parent class for all the button classes
import 'dart:ui';

abstract class IPortfolioButton {
  final Function()? onPressed;
  final bool disabled;
  final double? width;
  final Color? color;
  final double? height;
  const IPortfolioButton({
    required this.onPressed,
    this.width,
    this.color,
    this.height,
    this.disabled = false,
  });
}
