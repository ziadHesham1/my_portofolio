import 'package:flutter/material.dart';

import '../../common/widgets/buttons/portfolio_button_export.dart';

class DesktopNavigationButtons extends StatelessWidget {
  const DesktopNavigationButtons({
    super.key,
    required this.actionLabels,
  });

  final List<String> actionLabels;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: actionLabels
          .map(
            (e) => PortfolioButton(
              button: PortfolioTextButton(
                onPressed: () {},
                buttonLabel: e,
              ),
            ),
          )
          .toList(),
    );
  }
}
