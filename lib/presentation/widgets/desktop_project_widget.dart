import 'package:flutter/material.dart';

import '../../common/portfolio_constants.dart';
import '../../common/widgets/buttons/portfolio_image_widget.dart';
import '../../data/models/project_model.dart';
import 'project_action_buttons.dart';

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
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: SizedBox(
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
                  ProjectActionButtons(project: project),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
