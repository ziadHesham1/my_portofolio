import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import '../../common/style/portfolio_text_theme.dart';
import '../../common/widgets/buttons/portfolio_button_export.dart';

class HomeInfoWidget extends StatelessWidget {
  const HomeInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 300,
        maxWidth: 400,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hi there, I\'m',
            style: TextStyle(
              fontSize: PortfolioTextTheme.fontSize18,
            ),
          ),
          const Text(
            'Ziad Adam 👋',
            style: TextStyle(
              // fontSize: 40.0,
              fontSize: PortfolioTextTheme.fontSize40,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Divider(
            color: PortfolioColors.accentColor,
            thickness: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'A ',
                    style: TextStyle(
                      fontSize: PortfolioTextTheme.fontSize16,
                      color: PortfolioColors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'Flutter developer ',
                    style: TextStyle(
                      fontSize: PortfolioTextTheme.fontSize16,
                      fontWeight: FontWeight.bold,
                      color: PortfolioColors.secondaryColor,
                    ),
                  ),
                  TextSpan(
                    text:
                        'passionate about molding ideas into breathtaking digital experience',
                    style: TextStyle(
                      fontSize: PortfolioTextTheme.fontSize16,
                      // fontWeight: FontWeight.bold,
                      color: PortfolioColors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            constraints: const BoxConstraints(
              minWidth: 300,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: PortfolioButton(
                    button: PortfolioElevatedButton(
                      radius: 8.r,
                      onPressed: () {
                        onNavbarItemTap(3);
                      },
                      text: 'Contact me',
                    ),
                  ),
                ),
                SizedBox(width: 6.w),
                Expanded(
                  flex: 8,
                  child: PortfolioButton(
                    button: PortfolioElevatedButton(
                      radius: 8,
                      color: PortfolioColors.secondaryColor,
                      onPressed: () {
                        onNavbarItemTap(2);
                      },
                      text: 'View my work',
                    ),
                  ),
                ),
                SizedBox(width: 6.w),
                Expanded(
                  flex: 2,
                  child: PortfolioButton(
                    button: PortfolioIconButton(
                        hasBorder: false,
                        color: Colors.transparent,
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.github)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onNavbarItemTap(int index) {
    Scrollable.ensureVisible(
      PortfolioConstants.navbarKeys[index].currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
