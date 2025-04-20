import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../common/network/url_helper.dart';
import '../../../../common/style/portfolio_colors.dart';
import '../../../../common/widgets/buttons/portfolio_button_export.dart';
import '../../logic/contact_info_cubit/contact_info_cubit.dart';

class SocialIconsWidget extends StatelessWidget {
  const SocialIconsWidget({super.key});

  // Method to launch URL

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactInfoCubit, ContactInfoState>(
        builder: (context, state) {
      final List<Map<String, dynamic>> socialLinks = [
        {
          'icon': FontAwesomeIcons.github,
          'url': state.contactInfo.githubLink,
        },
        {
          'icon': FontAwesomeIcons.linkedin,
          'url': state.contactInfo.linkedinLink,
        },
        {
          'icon': FontAwesomeIcons.whatsapp,
          'url': state.contactInfo.whatsappLink,
        },
        {
          'icon': FontAwesomeIcons.telegram,
          'url': state.contactInfo.telegramLink,
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
    });
  }
}
