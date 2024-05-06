import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/common/style/portfolio_colors.dart';

import '../../common/widgets/buttons/portfolio_button_export.dart';

class MobileNavigationButtons extends StatelessWidget {
  final List<({String label, IconData iconData})> actionLabels;
  final Function(int index) onNavbarItemTap;
  const MobileNavigationButtons({
    super.key,
    required this.actionLabels,
    required this.onNavbarItemTap,
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
        ...actionLabels.mapIndexed(
          (i, ({String label, IconData iconData}) e) => ListTile(
            leading: Icon(e.iconData),
            title: Text(e.label),
            onTap: () {
              onNavbarItemTap(i);
              Navigator.pop(context);
            },
          ),
        )
      ],
    );
  }
}
