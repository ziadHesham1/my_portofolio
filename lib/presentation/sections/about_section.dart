import 'package:flutter/material.dart';

import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import '../../common/style/portfolio_text_theme.dart';
import '../widgets/about_skills_widget.dart';
import '../../common/widgets/responsive_row.dart';

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

        // width: PortfolioConstants.portfolio_screen_width() / 2.5,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  enable: PortfolioConstants.portfolio_screen_width() <= 600,
                  children: [
                    aboutItemWidget(
                      title: 'SPECIALTY',
                      subTitle: 'Flutter Developer',
                    ),
                    // const SizedBox(width: 14),
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
    if (PortfolioConstants.isDesktop()) {
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
  }

  Widget aboutItemWidget({
    required String title,
    required String subTitle,
    Widget? child,
    double? maxWidth,
  }) {
    return Container(
      constraints: maxWidth == null ? null : BoxConstraints(maxWidth: maxWidth),
      padding: const EdgeInsets.all(8),
      // width: maxWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
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
