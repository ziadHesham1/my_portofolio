import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../common/portfolio_constants.dart';
import '../../common/widgets/image_widgets/portfolio_image_widget.dart';
import '../../common/widgets/shimmers_widget.dart';

class ProjectImagesCarouselSlider extends StatelessWidget {
  final List<String> imagesList;
  const ProjectImagesCarouselSlider({
    super.key,
    required this.imagesList,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: PortfolioConstants.portfolio_screen_height() / 2.2,
        viewportFraction: 0.6,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
        scrollDirection: Axis.horizontal,
      ),
      items: imagesList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return PortfolioImageWidget(
              width: PortfolioConstants.portfolio_screen_width() / 2.5,
              url: i,
              shimmerWidget: const PortfolioShimmerWidget(),
            );
          },
        );
      }).toList(),
    );
  }
}
