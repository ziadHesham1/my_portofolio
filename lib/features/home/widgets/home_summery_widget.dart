import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ziad_dev/common/style/portfolio_colors.dart';
import 'package:ziad_dev/common/style/portfolio_text_theme.dart';
import 'package:ziad_dev/common/widgets/portfolio_loading_widget.dart';
import 'package:ziad_dev/common/widgets/shimmer_widgets.dart';

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
        text: TextSpan(
          children: [
            TextSpan(
              text: 'a_text'.tr(), // "A "
              style: const TextStyle(
                fontSize: PortfolioTextTheme.fontSize16,
                color: PortfolioColors.black,
              ),
            ),
            TextSpan(
              text: 'flutter_developer'.tr(), // "Flutter developer"
              style: const TextStyle(
                fontSize: PortfolioTextTheme.fontSize16,
                fontWeight: FontWeight.bold,
                color: PortfolioColors.accent,
              ),
            ),
            TextSpan(
              text: 'passionate_about_molding_ideas'
                  .tr(), // "passionate about molding ideas"
              style: const TextStyle(
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
