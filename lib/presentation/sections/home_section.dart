import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/common/widgets/responsive_row.dart';

import '../../common/portfolio_assets.dart';
import '../../common/portfolio_constants.dart';
import '../../common/widgets/buttons/portfolio_image_widget.dart';
import '../widgets/home_info_widget.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var children = [
      const HomeInfoWidget(),
      ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 250),
        child: PortfolioImageWidget(
          url: PortfolioAssets.the_flutter_image,
          height: PortfolioConstants.portfolio_screen_height() / 2,
          width: PortfolioConstants.portfolio_screen_width() / 3,
          // circleAvatarRadius: 140,
        ),
      ),
    ];
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1200),
      child: ResponsiveRow(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}
