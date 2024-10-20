import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/common/widgets/shimmers_widget.dart';

import '../../common/network/url_helper.dart';
import '../../common/portfolio_assets.dart';
import '../../common/style/portfolio_colors.dart';
import '../../common/widgets/buttons/portfolio_button_export.dart';
import '../../common/widgets/image_widgets/portfolio_image_widget.dart';
import '../../common/widgets/responsive_row.dart';
import '../../data/models/project_model.dart';

class ProjectActionButtons extends StatelessWidget {
  const ProjectActionButtons({
    super.key,
    required this.project,
  });

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 450),
      child: ResponsiveRow(
        minRowWidth: 400,
        rowMainAxisAlignment: MainAxisAlignment.center,
        columnMainAxisAlignment: MainAxisAlignment.center,
        childrenBuilder: (isRow) => [
          if (project.actionLinks.github != null)
            PortfolioButton(
              button: PortfolioTextButton(
                buttonLabel: 'View on Github ',
                onPressed: () {
                  UrlHelper.launchURL(project.actionLinks.github!);
                },
                widget: PortfolioImageWidget(
                  url: PortfolioAssets.github_icon,
                  height: 40,
                  shimmerWidget: const PortfolioShimmerWidget(
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
            ),
          const SizedBox(width: 25, height: 15),
          if (project.actionLinks.demoVideo != null)
            PortfolioButton(
              button: PortfolioTextButton(
                onPressed: () {
                  UrlHelper.launchURL(project.actionLinks.demoVideo!);
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
      ),
    );
  }
}
