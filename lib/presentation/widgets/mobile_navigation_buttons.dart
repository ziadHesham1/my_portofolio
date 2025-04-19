import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/common/navigation/sections_navigator.dart';
import 'package:my_portfolio/common/style/portfolio_colors.dart';

import '../../common/widgets/buttons/portfolio_button_export.dart';

class MobileNavigationButtons extends StatelessWidget {
  const MobileNavigationButtons({
    super.key,
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
        ...SectionsNavigator.actionLabels.mapIndexed(
          (i, e) => ListTile(
            leading: Icon(e.iconData),
            title: Text(e.label),
            onTap: () {
              SectionsNavigator.navigateTo(e.navKey);
              Navigator.pop(context);
            },
          ),
        )
      ],
    );
  }
}
