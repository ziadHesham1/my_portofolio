import 'package:flutter/material.dart';
import 'package:my_portfolio/common/style/portfolio_colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidgets {
  static Color baseColor = PortfolioColors.secondary.withOpacity(0.4);
  static Color highlightColor = PortfolioColors.primary;

  static Shimmer shimmerWrapper({required Widget child}) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: child,
    );
  }

  // 1. ShimmerText - for multi-line shimmer text
  static Widget shimmerText({
    int lines = 1,
    double lineHeight = 16.0,
    double borderRadius = 6.0,
    double width = 200.0,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(lines, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Container(
            width: width,
            height: lineHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        );
      }),
    ).wrapWithShimmer();
  }

  // 2. ShimmerContainer - for a rectangular container with rounded corners
  static Widget shimmerContainer({
    double? width,
    double? height,
    double borderRadius = 20.0,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    ).wrapWithShimmer();
  }

  // 3. ShimmerLargeText - for a single line of large text
  static Widget shimmerLargeText({
    double fontSize = 24.0,
    double width = 200,
    double borderRadius = 8.0,
  }) {
    return Container(
      width: width,
      height: fontSize + 8, // Add padding to match font size
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    ).wrapWithShimmer();
  }
}

// Extension method to easily wrap widgets in shimmer effect
extension on Widget {
  Widget wrapWithShimmer() {
    return ShimmerWidgets.shimmerWrapper(child: this);
  }
}
