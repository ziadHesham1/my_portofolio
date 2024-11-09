import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'portfolio_placeholder_image_widget.dart';

class PortfolioImageWidget extends StatelessWidget {
  final String? url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final String? placeHolderImage;
  final Widget shimmerWidget; // New parameter for shimmer widget

  const PortfolioImageWidget({
    super.key,
    this.width,
    this.height,
    this.fit,
    this.placeHolderImage,
    required this.url,
    required this.shimmerWidget, // Require shimmer widget
  });

  @override
  Widget build(BuildContext context) {
    if (url == null || url!.isEmpty) {
      // Handle empty URL
      return _buildPlaceholderImage();
    } else {
      if (url!.startsWith('assets')) {
        return Image.asset(
          url!,
          width: width,
          height: height,
          fit: fit,
          errorBuilder: (context, error, stackTrace) {
            return _buildPlaceholderImage();
          },
        );
      } else if (url!.startsWith('http') || url!.startsWith('https')) {
        return _buildPlaceholderImage();
      } else {
        // Handle invalid URL
        return _buildPlaceholderImage();
      }
    }
  }

  Widget _cachedNetworkImage() {
    return CachedNetworkImage(
      imageUrl: url!,
      width: width,
      height: height,
      fit: fit,
      errorWidget: (context, url, error) {
        print('Error loading image: $error');
        return _buildPlaceholderImage();
      },
      progressIndicatorBuilder: (context, url, progress) {
        // Use the shimmer widget passed as a parameter
        return shimmerWidget;
      },
      imageBuilder: (context, imageProvider) {
        // return shimmerWidget;
        return Image(
          image: imageProvider,
          width: width,
          height: height,
          fit: fit,
        );
      },
    );
  }

  Widget _buildPlaceholderImage() {
    // Return a placeholder image or default behavior for invalid or empty URL

    return PortfolioPlaceholderImageWidget(
      placeHolderImage: placeHolderImage,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
