import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/style/portfolio_colors.dart';
import '../../../common/style/portfolio_text_theme.dart';
import '../../../common/widgets/portfolio_loading_widget.dart';
import '../../../common/widgets/responsive_row.dart';
import '../../../common/widgets/shimmer_widgets.dart';
import '../../widgets/about_skills_widget.dart';
import 'data/about_section_data.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    var children = [
      aboutItemWidget(
        maxWidth: 490,
        title: 'ABOUT ME 🚀',
        subTitle: AboutSectionData.aboutSubtitle,
        child: PortfolioLoadingWidget(
          loadingChild: ShimmerWidgets.shimmerText(
            lines: 5,
            width: double.infinity,
          ),
          child: const Text(
            AboutSectionData.aboutDescription,
            style: TextStyle(
              fontSize: PortfolioTextTheme.fontSize16,
            ),
          ),
        ),
      ),
      const SizedBox(height: 60),
      aboutItemWidget(
        maxWidth: 500,
        title: 'TECH STACK',
        subTitle: AboutSectionData.techStackSubtitle,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PortfolioLoadingWidget(
                loadingChild: ShimmerWidgets.shimmerContainer(
                  height: 60.h,
                ),
                child: const AboutSkillsWidget(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ResponsiveRow(
                  rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                  columnCrossAxisAlignment: CrossAxisAlignment.start,
                  minRowWidth: 480,
                  childrenBuilder: (isRow) => [
                    aboutItemWidget(
                      title: 'SPECIALTY',
                      subTitle: AboutSectionData.specialtySubtitle,
                    ),
                    const SizedBox(width: 14),
                    aboutItemWidget(
                      title: 'EDUCATION',
                      subTitle: AboutSectionData.educationSubtitle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          return ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1300),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          );
        }
      },
    );
  }

  Widget aboutItemWidget({
    required String title,
    required String subTitle,
    Widget? child,
    double? maxWidth,
    Color? color,
  }) {
    return Container(
      constraints: maxWidth == null ? null : BoxConstraints(maxWidth: maxWidth),
      padding: const EdgeInsets.all(8),
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: PortfolioTextTheme.fontSize14,
              fontWeight: FontWeight.bold,
              color: PortfolioColors.accent,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: (child == null)
                  ? PortfolioTextTheme.fontSize16
                  : PortfolioTextTheme.fontSize28,
              fontWeight: (child == null) ? null : FontWeight.w700,
            ),
          ),
          if (child != null) child,
        ],
      ),
    );
  }
}
