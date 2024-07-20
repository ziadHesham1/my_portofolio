import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_text_theme.dart';
import '../../data/models/projects_model.dart';
import '../widgets/desktop_project_widget.dart';
import '../widgets/mobile_project_widget.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
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
              children: ProjectsModel.projects.items.mapIndexed((i, project) {
                // refactor this code to be one widget
                return Column(
                  children: [
                    if (PortfolioConstants.isDesktop()) ...{
                      DesktopProjectWidget(
                          project: project, isReversed: i.isEven)
                    } else ...{
                      MobileProjectWidget(project: project)
                    },
                    Container(height: 100.h),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
