import 'package:flutter/material.dart';
import 'package:my_portfolio/common/widgets/shimmer_widgets.dart';

import '../../../common/style/portfolio_colors.dart';
import '../../../common/style/portfolio_text_theme.dart';
import '../../../common/widgets/responsive_row.dart';
import '../../widgets/about_skills_widget.dart';

class LoadingAboutSection extends StatelessWidget {
  const LoadingAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    var children = [
      aboutItemWidget(
        maxWidth: 500,
        title: 'ABOUT ME 🚀',
        subTitle: 'Who I am',
        child: ShimmerWidgets.shimmerText(
          lines: 5,
          lineHeight: PortfolioTextTheme.fontSize16.toDouble(),
        ),
      ),
      const SizedBox(height: 60),
      aboutItemWidget(
        maxWidth: 500,
        title: 'TECH STACK',
        subTitle: 'What I\'m good at 💻',
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AboutSkillsWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ResponsiveRow(
                  rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                  columnCrossAxisAlignment: CrossAxisAlignment.start,
                  // if width greater that 600 make it a row
                  // else make it a colum
                  minRowWidth: 480,
                  childrenBuilder: (isRow) => [
                    aboutItemWidget(
                      title: 'SPECIALTY',
                      subTitle: 'Flutter Developer',
                    ),
                    const SizedBox(width: 14),
                    aboutItemWidget(
                      title: 'EDUCATION',
                      subTitle: '🎓 AIET, Computer Engineering',
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
