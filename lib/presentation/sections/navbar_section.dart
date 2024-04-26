import 'package:flutter/material.dart';
import 'package:my_portfolio/common/portfolio_constants.dart';
import 'package:my_portfolio/common/style/portfolio_colors.dart';
import 'package:my_portfolio/presentation/widgets/desktop_navigation_buttons.dart';
import 'package:my_portfolio/presentation/widgets/name_widget.dart';

class NavbarSection extends StatelessWidget {
  const NavbarSection({
    super.key,
    required this.actionLabels,
  });

  final List<String> actionLabels;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
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
          const Divider(
            color: PortfolioColors.accentColor,
            height: 3,
          ),
        ],
      ),
    );
  }
}
