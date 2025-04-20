import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../common/style/portfolio_colors.dart';
import '../../../common/style/portfolio_text_theme.dart';
import 'widgets/contact_info_widget.dart';
import 'widgets/social_icons_widget.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      constraints: const BoxConstraints(maxWidth: 350, maxHeight: 400),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.secondary, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'contact_me_title'.tr(),
            style: const TextStyle(
              fontSize: PortfolioTextTheme.fontSize14,
              fontWeight: FontWeight.bold,
              color: AppColors.accent,
            ),
          ),
          Text(
            'lets_talk'.tr(),
            style: const TextStyle(
              fontSize: PortfolioTextTheme.fontSize18,
            ),
          ),
          const ContactInfoWidget(),
          const SocialIconsWidget(),
        ],
      ),
    );
  }
}
