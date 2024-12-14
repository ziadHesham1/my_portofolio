import 'package:flutter/material.dart';
import 'package:my_portfolio/common/portfolio_assets.dart';

class PortfolioPlaceholderImageWidget extends StatelessWidget {
  const PortfolioPlaceholderImageWidget({
    super.key,
    this.placeHolderImage,
    required this.width,
    required this.height,
    required this.fit,
  });

  final String? placeHolderImage;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      placeHolderImage ?? PortfolioAssets.empty_image,
      width: width ?? 300,
      height: height ?? 300,
      fit: fit,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          width: width ?? 300,
          height: height ?? 300,
          color: Colors.grey.withOpacity(0.3),
        );
      },
    );
  }
}
