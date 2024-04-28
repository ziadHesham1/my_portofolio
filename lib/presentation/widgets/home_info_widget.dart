import 'package:flutter/material.dart';

import '../../common/portfolio_assets.dart';
import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import '../../common/widgets/buttons/portfolio_button_export.dart';
import '../../common/widgets/buttons/portfolio_image_widget.dart';

class HomeInfoWidget extends StatelessWidget {
  const HomeInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: PortfolioConstants.portfolio_screen_width / 3.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hi there, I\'m',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          const Text(
            'Ziad Adam 👋',
            style: TextStyle(
              fontSize: 40.0,
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
                      fontSize: 16,
                      color: PortfolioColors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'Flutter developer ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: PortfolioColors.secondaryColor,
                    ),
                  ),
                  TextSpan(
                    text:
                        'passionate about molding ideas into breathtaking digital experience',
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                      color: PortfolioColors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              PortfolioButton(
                button: PortfolioElevatedButton(
                  width: PortfolioConstants.portfolio_screen_width / 30,
                  height: PortfolioConstants.portfolio_screen_height / 20,
                  radius: 8,
                  onPressed: () {},
                  text: 'Contact me',
                ),
              ),
              const SizedBox(width: 10),
              PortfolioButton(
                button: PortfolioElevatedButton(
                  width: PortfolioConstants.portfolio_screen_width / 30,
                  height: PortfolioConstants.portfolio_screen_height / 20,
                  radius: 8,
                  color: PortfolioColors.secondaryColor,
                  onPressed: () {},
                  text: 'View my work',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: PortfolioButton(
                  button: PortfolioIconButton(
                    hasBorder: false,
                    color: Colors.transparent,
                    onPressed: () {},
                    icon: PortfolioImageWidget(
                      url: PortfolioAssets.github_icon,
                      width: PortfolioConstants.portfolio_screen_width / 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
