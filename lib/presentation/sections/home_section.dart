import 'package:flutter/material.dart';

import '../../common/portfolio_constants.dart';
import '../../common/portfolio_network_assets.dart';
import '../../common/widgets/image_widgets/portfolio_image_widget.dart';
import '../../common/widgets/responsive_row.dart';
import '../../common/widgets/shimmers_widget.dart';
import '../widgets/home_info_widget.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1200),
      child: ResponsiveRow(
        minRowWidth: 900,
        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
        childrenBuilder: (isRow) => [
          if (!isRow) const SizedBox(height: 80),
          const HomeInfoWidget(),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 250),
            child: PortfolioImageWidget(
              url: PortfolioNetworkAssets.the_flutter_image,
              height: PortfolioConstants.portfolio_screen_height() / 2,
              width: PortfolioConstants.portfolio_screen_width() / 3,
              shimmerWidget: PortfolioShimmerWidget(
                height: PortfolioConstants.portfolio_screen_height() / 2,
                width: PortfolioConstants.portfolio_screen_width() / 3,
              ),
              // circleAvatarRadius: 140,
            ),
          ),
        ],
      ),
    );
  }
}
