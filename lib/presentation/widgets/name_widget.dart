import 'package:flutter/material.dart';

import '../../common/style/portfolio_colors.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Ziad',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: PortfolioColors.black,
            ),
          ),
          TextSpan(
            text: '.dev',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: PortfolioColors.accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
