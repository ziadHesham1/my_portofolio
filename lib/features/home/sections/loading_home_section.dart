import 'package:flutter/material.dart';

import '../../../common/portfolio_constants.dart';
import '../../../common/widgets/responsive_row.dart';
import '../../../common/widgets/shimmer_widgets.dart';
import '../widgets/loading_home_info_widget.dart';

class LoadingHomeSection extends StatelessWidget {
  const LoadingHomeSection({
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
          const LoadingHomeInfoWidget(),
          if (!isRow) const SizedBox(height: 80),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 250),
            child: ShimmerWidgets.shimmerContainer(
              height: PortfolioConstants.portfolio_screen_height() / 2.5,
              width: PortfolioConstants.portfolio_screen_width() / 3,
            ),
          ),
        ],
      ),
    );
  }
}
