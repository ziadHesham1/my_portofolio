import 'package:flutter/material.dart';

import '../../common/portfolio_constants.dart';
import '../../common/widgets/image_widgets/portfolio_image_widget.dart';
import '../../common/widgets/portfolio_loading_widget.dart';
import '../../common/widgets/shimmer_widgets.dart';
import '../../common/widgets/shimmers_widget.dart';
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
    // project is mobile and the screen is desktop
    if (PortfolioConstants.portfolio_screen_width() > 1000) {
      return Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: PortfolioLoadingWidget(
          loadingChild: ShimmerWidgets.shimmerContainer(
            height: PortfolioConstants.portfolio_screen_height() / 2,
            width: PortfolioConstants.portfolio_screen_width() / 3,
          ),
          child: PortfolioImageWidget(
            url: widget.project.thumbnail,
            shimmerWidget: PortfolioShimmerWidget(
              height: PortfolioConstants.portfolio_screen_height() / 2,
              width: PortfolioConstants.portfolio_screen_width() / 3,
            ),
          ),
        ),
      );
      // project is website and the screen is mobile
    } else if (PortfolioConstants.portfolio_screen_width() <= 1000 &&
        widget.project.projectType == ProjectType.website) {
      return Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: PortfolioLoadingWidget(
          loadingChild: ShimmerWidgets.shimmerContainer(
            height: PortfolioConstants.portfolio_screen_height() / 2,
            // width: PortfolioConstants.portfolio_screen_width() / 3,
          ),
          child: PortfolioImageWidget(
            url: widget.project.thumbnail,
            height: PortfolioConstants.portfolio_screen_height() / 2,
            // width: PortfolioConstants.portfolio_screen_width() / 3,
            shimmerWidget: PortfolioShimmerWidget(
              height: PortfolioConstants.portfolio_screen_height() / 2,
              // width: PortfolioConstants.portfolio_screen_width() / 3,
            ),
          ),
        ),
      );
      // project is mobile and the screen is mobile
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: PortfolioLoadingWidget(
            loadingChild: ShimmerWidgets.shimmerContainer(
              height: PortfolioConstants.portfolio_screen_height() / 2,
              width: PortfolioConstants.portfolio_screen_width() / 3,
            ),
            child:
                ProjectImagesCarouselSlider(imagesList: widget.project.images)),
      );
    }
  }
}
