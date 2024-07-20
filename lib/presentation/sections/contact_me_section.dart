import 'package:flutter/material.dart';

import '../../common/style/portfolio_colors.dart';
import '../../common/style/portfolio_text_theme.dart';
import '../widgets/contact_info_widget.dart';
import '../widgets/social_icons_widget.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      constraints: const BoxConstraints(maxWidth: 350, maxHeight: 400),
      decoration: BoxDecoration(
        border: Border.all(color: PortfolioColors.secondaryColor, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'CONTACT ME',
            style: TextStyle(
              fontSize: PortfolioTextTheme.fontSize14,
              fontWeight: FontWeight.bold,
              color: PortfolioColors.accentColor,
            ),
          ),
          Text(
            'Let\'s talk!',
            style: TextStyle(
              fontSize: PortfolioTextTheme.fontSize18,
            ),
          ),
          ContactInfoWidget(),
          SocialIconsWidget(),
        ],
      ),
    );
  }
}
