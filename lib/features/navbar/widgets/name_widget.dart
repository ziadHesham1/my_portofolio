import 'package:flutter/material.dart';
import 'package:my_portfolio/common/navigation/sections_navigator.dart';

import '../../../common/style/portfolio_colors.dart';
import '../../../common/style/portfolio_text_theme.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        SectionsNavigator.navigateTo(SectionsNavigator.homeNavigatorKey),
      },
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Ziad',
              style: TextStyle(
                fontSize: PortfolioTextTheme.fontSize22,
                fontWeight: FontWeight.bold,
                color: PortfolioColors.black,
              ),
            ),
            TextSpan(
              text: '.dev',
              style: TextStyle(
                fontSize: PortfolioTextTheme.fontSize22,
                fontWeight: FontWeight.bold,
                color: PortfolioColors.accent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
