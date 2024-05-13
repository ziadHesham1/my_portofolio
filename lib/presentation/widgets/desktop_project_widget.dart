import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/portfolio_assets.dart';
import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import '../../common/widgets/buttons/portfolio_button_export.dart';
import '../../common/widgets/buttons/portfolio_image_widget.dart';
import '../../data/models/project_model.dart';

class DesktopProjectWidget extends StatelessWidget {
  final ProjectModel project;
  const DesktopProjectWidget({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /*  Material(
            elevation: 4.0,
            shadowColor: PortfolioColors.black,
            borderRadius: BorderRadius.circular(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: 
            ),
          ), */
          PortfolioImageWidget(
            width: PortfolioConstants.portfolio_screen_width() / 2.5,
            height: PortfolioConstants.portfolio_screen_height() / 3,
            url: project.images.first,
          ),
          SizedBox(
            // width: PortfolioConstants.portfolio_screen_width() / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  project.title,
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  project.subTitle,
                  style: const TextStyle(
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
    );
  }
}
