import 'package:flutter/material.dart';

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
