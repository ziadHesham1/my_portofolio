import 'package:flutter/material.dart';

import '../../../../common/portfolio_constants.dart';
import '../../../../common/style/portfolio_colors.dart';
import '../../../../common/widgets/image_widgets/portfolio_image_widget.dart';
import '../../../../common/widgets/portfolio_loading_widget.dart';
import '../../../../common/widgets/shimmer_widgets.dart';
import '../../../../common/widgets/shimmers_widget.dart';
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        // decoration: BoxDecoration(
        //   color: AppColors.secondary.withOpacity(0.3),
        //   borderRadius: BorderRadius.circular(20),
        // ),
        // clipBehavior: Clip.antiAlias,
        padding: const EdgeInsets.all(16),
        child: _imageContent(),
      ),
    );
  }

  Widget _imageContent() {
    final isDesktop = PortfolioConstants.portfolio_screen_width() > 1000;
    final isCarousel =
        !isDesktop && widget.project.projectType == ProjectType.mobile;

    if (isCarousel) {
      return PortfolioLoadingWidget(
        loadingChild: ShimmerWidgets.shimmerContainer(
          height: PortfolioConstants.portfolio_screen_height() / 2,
          width: PortfolioConstants.portfolio_screen_width() / 3,
        ),
        child: ProjectImagesCarouselSlider(imagesList: widget.project.images),
      );
    }

    final height = isDesktop
        ? PortfolioConstants.portfolio_screen_height() / 2
        : PortfolioConstants.portfolio_screen_height() / 2;
    final width =
        isDesktop ? PortfolioConstants.portfolio_screen_width() / 3 : null;

    return PortfolioLoadingWidget(
      loadingChild: ShimmerWidgets.shimmerContainer(
        height: height,
        width: width,
      ),
      child: PortfolioImageWidget(
        url: widget.project.thumbnail,
        height: height,
        shimmerWidget: PortfolioShimmerWidget(height: height),
      ),
    );
  }
}
