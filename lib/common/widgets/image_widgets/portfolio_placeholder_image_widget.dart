import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ziad_dev/common/portfolio_assets.dart';

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
    final path = placeHolderImage ?? PortfolioAssets.empty_image;
    final isSvg = path.endsWith('.svg');

    if (isSvg) {
      return SvgPicture.asset(
        path,
        width: width ?? 300,
        height: height ?? 300,
        fit: fit ?? BoxFit.contain,
        placeholderBuilder: (_) => Container(
          width: width ?? 300,
          height: height ?? 300,
          color: Colors.grey.withOpacity(0.3),
        ),
      );
    }

    return Image.asset(
      path,
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
