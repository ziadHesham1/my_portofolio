import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/data/models/project_action_links.dart';

import '../../common/portfolio_assets.dart';
import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_text_theme.dart';
import '../../data/models/project_model.dart';
import '../widgets/desktop_project_widget.dart';
import '../widgets/mobile_project_widget.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      ProjectModel(
        id: '1',
        actionLinks: const ProjectActionLinks(
          demoVideo: 'https://ziad-dev-e015d.web.app/',
          github: 'https://github.com/ziadHesham1/my_portofolio',
        ),
        images: [PortfolioAssets.portfolio_image],
        subTitle:
            'A personal portfolio website designed to showcase my skills, projects, and experiences as a Flutter developer.',
        title: 'Portfolio Website',
      ),
    ];
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1300),
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
              children: projects.map((project) {
                // refactor this code to be one widget
                if (PortfolioConstants.isDesktop()) {
                  return DesktopProjectWidget(project: project);
                } else {
                  return MobileProjectWidget(project: project);
                }
              }).toList(),
              /* );
            } */
            ),
          ),
        ],
      ),
    );
  }
}
