import 'package:flutter/material.dart';

import '../../data/models/project_model.dart';
import 'project_action_buttons.dart';
import 'project_images_widget.dart';
import 'project_info_widget.dart';

class MobileProjectWidget extends StatelessWidget {
  final ProjectModel project;
  const MobileProjectWidget({
    required this.project,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ProjectInfoWidget(project: project),
        ProjectImagesWidget(project: project),
        // ConstrainedBox(
        //   constraints: const BoxConstraints(maxWidth: 600),
        //   child: Material(
        //     elevation: 4.0,
        //     shadowColor: PortfolioColors.black,
        //     borderRadius: BorderRadius.circular(10.0.r),
        //     child: ClipRRect(
        //       borderRadius: BorderRadius.circular(10.0.r),
        //       child: PortfolioImageWidget(
        //         // width: PortfolioConstants.portfolio_screen_width() / 2.5,
        //         url: project.images.first,
        //       ),
        //     ),
        //   ),
        // ),
        const SizedBox(height: 30),
        ProjectActionButtons(project: project),
      ],
    );
  }
}
