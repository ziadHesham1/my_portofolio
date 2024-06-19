import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../common/style/portfolio_colors.dart';

import '../../common/portfolio_constants.dart';
import '../../common/widgets/buttons/portfolio_image_widget.dart';
import '../../data/models/project_model.dart';

class ProjectImagesWidget extends StatefulWidget {
  const ProjectImagesWidget({super.key, required this.project});

  final ProjectModel project;

  @override
  State<ProjectImagesWidget> createState() => _ProjectImagesWidgetState();
}

class _ProjectImagesWidgetState extends State<ProjectImagesWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.project.projectType == ProjectType.website) {
      return Material(
          elevation: 4.0,
          shadowColor: PortfolioColors.black,
          borderRadius: BorderRadius.circular(10.0.r),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0.r),
              child: PortfolioImageWidget(
                // width: PortfolioConstants.portfolio_screen_width() / 2.2,
                height: PortfolioConstants.portfolio_screen_height() / 3,
                url: widget.project.images.isNotEmpty
                    ? widget.project.images.first
                    : '',
              )));
    } else {
      return NewWidget(imagesList: widget.project.images);
    }
  }
}

class NewWidget extends StatelessWidget {
  final List<String> imagesList;
  const NewWidget({
    super.key,
    required this.imagesList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      child: CarouselSlider(
        options: CarouselOptions(
          height: PortfolioConstants.portfolio_screen_height() / 2.5,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          // onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
        ),
        items: imagesList.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return PortfolioImageWidget(
                width: PortfolioConstants.portfolio_screen_width() / 2.5,
                height: 220,
                url: i,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
