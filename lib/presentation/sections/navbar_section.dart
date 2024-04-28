import 'package:flutter/material.dart';

import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import '../widgets/desktop_navigation_buttons.dart';
import '../widgets/name_widget.dart';

class NavbarSection extends StatelessWidget {
  const NavbarSection({
    super.key,
    required this.actionLabels,
  });

  final List<String> actionLabels;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const NameWidget(),
              if (PortfolioConstants.isDesktop)
                DesktopNavigationButtons(
                  actionLabels: actionLabels,
                ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Divider(
              color: PortfolioColors.secondaryColor,
              thickness: 3,
            ),
          ),
        ],
      ),
    );
  }
}
