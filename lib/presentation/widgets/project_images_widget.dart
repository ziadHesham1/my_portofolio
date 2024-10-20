import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/common/widgets/shimmers_widget.dart';

import '../../common/portfolio_constants.dart';
import '../../common/widgets/image_widgets/portfolio_image_widget.dart';
import '../../data/models/project_model.dart';
import 'project_images_carousel_slider.dart';

class ProjectImagesWidget extends StatefulWidget {
  const ProjectImagesWidget({super.key, required this.project});

  final ProjectModel project;

  @override
  State<ProjectImagesWidget> createState() => _ProjectImagesWidgetState();
}

class _ProjectImagesWidgetState extends State<ProjectImagesWidget> {
  @override
  Widget build(BuildContext context) {
    if (PortfolioConstants.portfolio_screen_width() > 1000) {
      return ClipRRect(
          borderRadius: BorderRadius.circular(10.0.r),
          child: PortfolioImageWidget(
            url: widget.project.thumbnail,
            shimmerWidget: PortfolioShimmerWidget(
              height: PortfolioConstants.portfolio_screen_height() / 2,
              width: PortfolioConstants.portfolio_screen_width() / 3,
            ),
          ));
    } else if (PortfolioConstants.portfolio_screen_width() <= 1000 &&
        widget.project.projectType == ProjectType.website) {
      return PortfolioImageWidget(
        url: widget.project.thumbnail,
        height: PortfolioConstants.portfolio_screen_height() / 2,
        width: PortfolioConstants.portfolio_screen_width() / 3,
        shimmerWidget: PortfolioShimmerWidget(
          height: PortfolioConstants.portfolio_screen_height() / 2,
          width: PortfolioConstants.portfolio_screen_width() / 3,
        ),
      );
    } else {
      return ProjectImagesCarouselSlider(imagesList: widget.project.images);
    }
  }
}
