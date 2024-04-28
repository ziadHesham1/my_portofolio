import 'package:flutter/material.dart';

import '../../common/portfolio_assets.dart';
import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import '../../common/widgets/buttons/portfolio_button_export.dart';
import '../../common/widgets/buttons/portfolio_image_widget.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          newMethod(
            width: PortfolioConstants.portfolio_screen_width / 2.6,
            title: 'ABOUT ME 🚀',
            subTitle: 'Who I am',
            child: const Text(
              'As a junior front-end developer, I am skilled in HTML,'
              'CSS, JavaScript, and Bootstrap. I have a meticulous'
              'eye for design which allows me to create beautiful,'
              'responsive websites from the ground up. My specialty'
              'involves utilizing Ul/UX best practices alongside'
              'clean, efficient code to deliver impeccable digital'
              'experiences.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          newMethod(
            width: PortfolioConstants.portfolio_screen_width / 2.5,
            title: 'TECH STACK',
            subTitle: 'What I\'m good at 💻',
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: [
                  Material(
                    elevation: 3,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: PortfolioColors.secondaryColor,
                    shadowColor:
                        PortfolioColors.secondaryColor.withOpacity(0.5),
                    child: Row(
                      children: [
                        ...List.generate(
                          6,
                          (index) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: PortfolioButton(
                              button: PortfolioIconButton(
                                hasBorder: false,
                                color: Colors.transparent,
                                onPressed: () {},
                                icon: PortfolioImageWidget(
                                  url: PortfolioAssets.github_icon,
                                  width: PortfolioConstants
                                          .portfolio_screen_width /
                                      30,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        newMethod2(
                          'SPECIALTY',
                          'Flutter Developer',
                        ),
                        const SizedBox(width: 14),
                        newMethod2(
                          'EDUCATION',
                          '🎓 AIET, Computer Engineering',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget newMethod2(String title, String subTitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: PortfolioColors.accentColor,
          ),
        ),
        Text(
          subTitle,
          style: const TextStyle(
            fontSize: 18.0,
            // fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  SizedBox newMethod({
    required String title,
    required String subTitle,
    Widget? child,
    required double width,
  }) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: PortfolioColors.accentColor,
            ),
          ),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          if (child != null) child,
        ],
      ),
    );
  }
}
