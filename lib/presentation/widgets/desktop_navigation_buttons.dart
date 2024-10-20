import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/common/portfolio_constants.dart';

import '../../common/style/portfolio_colors.dart';
import '../../common/widgets/buttons/portfolio_button_export.dart';

class DesktopNavigationButtons extends StatelessWidget {
  final List<({String label, IconData iconData})> actionLabels;
  final Function(int index) onNavbarItemTap;
  const DesktopNavigationButtons({
    super.key,
    required this.actionLabels,
    required this.onNavbarItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PortfolioConstants.portfolio_screen_height() / 20,
      child: Row(
        children: actionLabels.mapIndexed(
          (i, ({String label, IconData iconData}) e) {
            if (i == actionLabels.length - 1) {
              return Row(
                children: [
                  const VerticalDivider(
                    color: PortfolioColors.secondary,
                    thickness: 3,
                    indent: 3,
                    endIndent: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: PortfolioButton(
                      button: PortfolioElevatedButton(
                        width: PortfolioConstants.portfolio_screen_width() / 30,
                        height:
                            PortfolioConstants.portfolio_screen_height() / 20,
                        radius: 8,
                        onPressed: () {
                          onNavbarItemTap(i);
                        },
                        text: e.label,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: PortfolioButton(
                  button: PortfolioTextButton(
                    buttonStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      color: PortfolioColors.black,
                    ),
                    onPressed: () {
                      onNavbarItemTap(i);
                    },
                    buttonLabel: e.label,
                  ),
                ),
              );
            }
          },
        ).toList(),
      ),
    );
  }
}
