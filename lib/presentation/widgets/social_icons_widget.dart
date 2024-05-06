import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/common/style/portfolio_colors.dart';
import 'package:my_portfolio/common/widgets/buttons/portfolio_button_export.dart';

class SocialIconsWidget extends StatelessWidget {
  const SocialIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<IconData> iconsList = [
      FontAwesomeIcons.github,
      FontAwesomeIcons.linkedin,
      FontAwesomeIcons.whatsapp,
      FontAwesomeIcons.telegram,
    ];
    return Row(
      children: iconsList
          .map(
            (e) => PortfolioButton(
              button: PortfolioContainerButton(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                hasBorder: false,
                height: 6,
                borderRadius: 40,
                color: Colors.black,
                onPressed: () {},
                child: FaIcon(
                  e,
                  color: PortfolioColors.white,
                  size: 20,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
