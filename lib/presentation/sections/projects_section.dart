import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/portfolio_assets.dart';
import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import '../../common/widgets/buttons/portfolio_button_export.dart';
import '../../common/widgets/buttons/portfolio_image_widget.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Projects',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Text(
          'Take a look at some of my work 📍',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Material(
                    elevation: 4.0,
                    shadowColor: PortfolioColors.black,
                    borderRadius: BorderRadius.circular(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: PortfolioImageWidget(
                        width: PortfolioConstants.portfolio_screen_width / 2.5,
                        url: PortfolioAssets.portfolio_image,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: PortfolioConstants.portfolio_screen_width / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Personal portfolio',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'Landing page for a personal portfolio',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PortfolioButton(
                              button: PortfolioTextButton(
                                buttonStyle: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: PortfolioColors.black,
                                ),
                                onPressed: () {},
                                buttonLabel: 'View on Github ',
                                widget: PortfolioImageWidget(
                                  url: PortfolioAssets.github_icon,
                                  height: 40,
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),
                            PortfolioButton(
                              button: PortfolioTextButton(
                                buttonStyle: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: PortfolioColors.black,
                                ),
                                onPressed: () {},
                                buttonLabel: 'Live Preview',
                                widget: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.arrowUpRightFromSquare,
                                    color: PortfolioColors.black,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 200)
            ],
          ),
        ),
      ],
    );
  }
}
