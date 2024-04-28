import 'package:flutter/material.dart';

import '../../common/portfolio_assets.dart';
import '../../common/widgets/buttons/portfolio_image_widget.dart';
import '../widgets/home_info_widget.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 120.0,
        vertical: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const HomeInfoWidget(),
          PortfolioImageWidget(
            url: PortfolioAssets.ziad_picture,
            circleAvatarRadius: 140,
          ),
        ],
      ),
    );
  }
}
