import 'package:flutter/material.dart';
import 'package:my_portfolio/common/portfolio_constants.dart';
import 'package:my_portfolio/common/portfolio_network_assets.dart';
import 'package:my_portfolio/common/widgets/image_widgets/portfolio_image_widget.dart';
import 'package:my_portfolio/common/widgets/portfolio_loading_widget.dart';
import 'package:my_portfolio/common/widgets/shimmer_widgets.dart';
import 'package:my_portfolio/common/widgets/shimmers_widget.dart';

class HomeImageWidget extends StatelessWidget {
  const HomeImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 250),
      child: PortfolioLoadingWidget(
        loadingChild: ShimmerWidgets.shimmerContainer(
          height: PortfolioConstants.portfolio_screen_height() / 2.5,
          width: PortfolioConstants.portfolio_screen_width() / 3,
        ),
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
    );
  }
}
