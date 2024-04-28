import 'package:flutter/material.dart';
import 'package:my_portfolio/common/style/portfolio_colors.dart';

import '../../common/widgets/buttons/portfolio_button_export.dart';

class MobileNavigationButtons extends StatelessWidget {
  const MobileNavigationButtons({
    super.key,
    required this.actionLabels,
  });

  final List<String> actionLabels;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: actionLabels
          .map(
            (e) => Column(
              children: [
                PortfolioButton(
                  button: PortfolioTextButton(
                    color: PortfolioColors.black,
                    onPressed: () {},
                    buttonLabel: e,
                  ),
                ),
                const Divider()
              ],
            ),
          )
          .toList(),
    );
  }
}
