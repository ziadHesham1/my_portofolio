import 'package:flutter/material.dart';
import 'package:my_portfolio/common/style/portfolio_colors.dart';
import 'package:my_portfolio/common/style/portfolio_text_theme.dart';
import 'package:my_portfolio/common/widgets/portfolio_loading_widget.dart';
import 'package:my_portfolio/common/widgets/shimmer_widgets.dart';

class HomeSummeryWidget extends StatelessWidget {
  const HomeSummeryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PortfolioLoadingWidget(
      loadingChild: ShimmerWidgets.shimmerText(
        lines: 3,
        lineHeight: PortfolioTextTheme.fontSize16.toDouble(),
        width: double.infinity,
      ),
      child: _loadedView(),
    );
  }

  Padding _loadedView() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'A ',
              style: TextStyle(
                fontSize: PortfolioTextTheme.fontSize16,
                color: PortfolioColors.black,
              ),
            ),
            TextSpan(
              text: 'Flutter developer ',
              style: TextStyle(
                fontSize: PortfolioTextTheme.fontSize16,
                fontWeight: FontWeight.bold,
                color: PortfolioColors.accent,
              ),
            ),
            TextSpan(
              text:
                  'passionate about molding ideas into breathtaking digital experience',
              style: TextStyle(
                fontSize: PortfolioTextTheme.fontSize16,
                // fontWeight: FontWeight.bold,
                color: PortfolioColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
