import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/network/url_helper.dart';
import '../../common/portfolio_assets.dart';
import '../../common/style/portfolio_colors.dart';
import '../../common/widgets/buttons/portfolio_button_export.dart';
import '../../common/widgets/buttons/portfolio_image_widget.dart';
import '../../data/models/project_model.dart';

class ProjectActionButtons extends StatelessWidget {
  const ProjectActionButtons({
    super.key,
    required this.project,
  });

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (project.actionLinks.github != null)
          PortfolioButton(
            button: PortfolioTextButton(
              buttonLabel: 'View on Github ',
              buttonStyle: const TextStyle(
                fontWeight: FontWeight.normal,
                color: PortfolioColors.black,
              ),
              onPressed: () {
                UrlHelper.launchURL(project.actionLinks.github!);
              },
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
            onPressed: () {
              UrlHelper.launchURL(project.actionLinks.demoVideo);
            },
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
    );
  }
}
