import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/style/portfolio_colors.dart';
import '../../common/widgets/buttons/portfolio_image_widget.dart';
import '../../data/models/project_model.dart';
import 'project_action_buttons.dart';

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
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Material(
            elevation: 4.0,
            shadowColor: PortfolioColors.black,
            borderRadius: BorderRadius.circular(10.0.r),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0.r),
              child: PortfolioImageWidget(
                // width: PortfolioConstants.portfolio_screen_width() / 2.5,
                url: project.images.first,
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        ProjectActionButtons(project: project),
      ],
    );
  }
}
