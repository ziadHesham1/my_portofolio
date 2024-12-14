import 'package:flutter/material.dart';
import 'package:my_portfolio/common/style/portfolio_colors.dart';
import 'package:shimmer/shimmer.dart';

class PortfolioShimmerWidget extends StatelessWidget {
  final double? height;
  final double? width;
  const PortfolioShimmerWidget({
    super.key,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: PortfolioColors.secondary.withOpacity(0.4),
      highlightColor: PortfolioColors.primary,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
