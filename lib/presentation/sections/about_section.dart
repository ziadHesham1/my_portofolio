import 'package:flutter/material.dart';

import '../../common/style/portfolio_colors.dart';
import '../../common/style/portfolio_text_theme.dart';
import '../../common/widgets/responsive_row.dart';
import '../widgets/about_skills_widget.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    var children = [
      aboutItemWidget(
        maxWidth: 500,
        title: 'ABOUT ME 🚀',
        subTitle: 'Who I am',
        child: const Text(
          "As a Flutter developer, I’m dedicated to building high-performance, cross-platform mobile applications."
          " My journey in software development has equipped me with strong problem-solving skills and a keen eye for detail."
          " I enjoy creating user-centric apps that are both functional and visually appealing."
          " Always eager to learn, I stay updated with the latest trends in technology. "
          " Let’s collaborate and turn your ideas into reality!",
          style: TextStyle(
            fontSize: PortfolioTextTheme.fontSize16,
          ),
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
              color: PortfolioColors.accentColor,
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
