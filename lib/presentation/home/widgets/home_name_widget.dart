import 'package:flutter/material.dart';
import 'package:my_portfolio/common/style/portfolio_text_theme.dart';

class HomeNameWidget extends StatelessWidget {
  const HomeNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi there, I\'m',
          style: TextStyle(
            fontSize: PortfolioTextTheme.fontSize18,
          ),
        ),
        Text(
          'Ziad Adam 👋',
          style: TextStyle(
            fontSize: PortfolioTextTheme.fontSize40,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
