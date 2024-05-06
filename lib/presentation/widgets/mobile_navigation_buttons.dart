import 'package:flutter/material.dart';
import 'package:my_portfolio/common/style/portfolio_colors.dart';

import '../../common/widgets/buttons/portfolio_button_export.dart';

class MobileNavigationButtons extends StatelessWidget {
  final List<({String label, IconData iconData})> actionLabels;
  const MobileNavigationButtons({
    super.key,
    required this.actionLabels,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PortfolioButton(
          button: PortfolioIconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: PortfolioColors.transparent,
            hasBorder: false,
            icon: const Icon(Icons.close),
          ),
        ),
        // const Divider(color: PortfolioColors.secondaryColor),
        ...actionLabels.map(
          (({String label, IconData iconData}) e) => ListTile(
            leading: Icon(e.iconData),
            title: Text(e.label),
          ),
        )
      ],
    );
  }
}
