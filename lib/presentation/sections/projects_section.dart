import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/portfolio_assets.dart';
import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_text_theme.dart';
import '../widgets/desktop_project_widget.dart';
import '../widgets/mobile_project_widget.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var portfolioImage = PortfolioAssets.portfolio_image;
    const title = 'Personal portfolio';
    const subTitle = 'Landing page for a personal portfolio';
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1200),
      child: Column(
        children: [
          const Text(
            'Projects',
            style: TextStyle(
              fontSize: PortfolioTextTheme.fontSize40,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            'Take a look at some of my work 📍',
            style: TextStyle(
              fontSize: PortfolioTextTheme.fontSize18,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0.h),
            child: Column(
              children: [
                if (PortfolioConstants.isDesktop()) ...{
                  DesktopProjectWidget(
                    portfolioImage: portfolioImage,
                    title: title,
                    subTitle: subTitle,
                  ),
                } else ...{
                  MobileProjectWidget(
                    portfolioImage: portfolioImage,
                    title: title,
                    subTitle: subTitle,
                  ),
                }
              ],
            ),
          ),
        ],
      ),
    );
  }
}
