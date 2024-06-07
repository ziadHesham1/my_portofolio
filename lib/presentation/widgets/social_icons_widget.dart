import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/network/url_helper.dart';
import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import '../../common/widgets/buttons/portfolio_button_export.dart';

class SocialIconsWidget extends StatelessWidget {
  const SocialIconsWidget({super.key});

  // Method to launch URL

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> socialLinks = [
      {
        'icon': FontAwesomeIcons.github,
        'url': PortfolioConstants.githubUrl,
      },
      {
        'icon': FontAwesomeIcons.linkedin,
        'url': PortfolioConstants.linkedinUrl,
      },
      {
        'icon': FontAwesomeIcons.whatsapp,
        'url': PortfolioConstants.whatsappUrl,
      },
      {
        'icon': FontAwesomeIcons.telegram,
        'url': PortfolioConstants.telegramUrl,
      },
    ];

    return Container(
      // color: Colors.red,
      constraints: const BoxConstraints(maxWidth: 250, maxHeight: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: socialLinks
            .map(
              (e) => PortfolioButton(
                button: PortfolioContainerButton(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  hasBorder: false,
                  height: 6,
                  borderRadius: 40,
                  color: Colors.black,
                  onPressed: () =>
                      UrlHelper.launchURL(e['url']), // Add onPressed function
                  child: FaIcon(
                    e['icon'],
                    color: PortfolioColors.white,
                    size: 20,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
