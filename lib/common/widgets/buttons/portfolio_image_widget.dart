import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../portfolio_assets.dart';

class PortfolioImageWidget extends StatelessWidget {
  final String? url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final String? placeHolderImage;
  final double? circleAvatarRadius;

  const PortfolioImageWidget({
    super.key,
    this.width,
    this.height,
    this.fit,
    this.placeHolderImage,
    required this.url,
    this.circleAvatarRadius,
  });

  @override
  Widget build(BuildContext context) {
    if (url == null || url!.isEmpty) {
      // Handle empty URL
      return circleAvatarRadius == null
          ? _buildPlaceholderImage()
          : _circlePlaceHolderImage();
    } else {
      if (url!.startsWith('assets')) {
        if (circleAvatarRadius != null) {
          return CircleAvatar(
            radius: circleAvatarRadius,
            backgroundImage: AssetImage(url!),
          );
        } else {
          return Image.asset(
            url!,
            width: width,
            height: height,
            fit: fit,
            errorBuilder: (context, error, stackTrace) {
              return _buildPlaceholderImage();
            },
          );
        }
      } else if (url!.startsWith('http') || url!.startsWith('https')) {
        if (circleAvatarRadius != null) {
          return _networkCircleAvatar();
        } else {
          return _cachedNetworkImage();
        }
      } else {
        // Handle invalid URL
        if (circleAvatarRadius != null) {
          return _circlePlaceHolderImage();
        } else {
          return _buildPlaceholderImage();
        }
      }
    }
  }

  Widget _cachedNetworkImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: Image.network(
        url!,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (context, error, stackTrace) {
          return _buildPlaceholderImage();
        },
        loadingBuilder: (
          BuildContext context,
          Widget child,
          ImageChunkEvent? loadingProgress,
        ) {
          if (loadingProgress == null) return child;
          return Skeletonizer(enabled: true, child: _buildPlaceholderImage());
        },
      ),
    );
  }

  _networkCircleAvatar() {
    return CachedNetworkImage(
      imageUrl: url!,
      errorWidget: (context, url, error) => _circlePlaceHolderImage(),
      progressIndicatorBuilder: (context, url, progress) {
        return Skeletonizer(
          enabled: true,
          child: _circlePlaceHolderImage(),
        );
      },
      imageBuilder: (context, imageProvider) {
        return CircleAvatar(
          radius: circleAvatarRadius,
          backgroundImage: imageProvider,
        );
      },
    );
  }

  CircleAvatar _circlePlaceHolderImage() {
    return CircleAvatar(
      radius: circleAvatarRadius,
      backgroundImage: AssetImage(PortfolioAssets.blankProfileImage),
    );
  }

  Widget _buildPlaceholderImage() {
    // Return a placeholder image or default behavior for invalid or empty URL

    return Image.asset(
      placeHolderImage ?? PortfolioAssets.emptyImage,
      width: width ?? 100,
      height: height ?? 100,
      fit: fit,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          width: width ?? 100,
          height: height ?? 100,
          color: Colors.grey.withOpacity(0.3),
        );
      },
    );
  }
}
