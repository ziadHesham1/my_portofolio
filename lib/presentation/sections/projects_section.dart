import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/common/style/portfolio_colors.dart';

import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_text_theme.dart';
import '../../logic/cubit/projects_cubit.dart';
import '../widgets/desktop_project_widget.dart';
import '../widgets/mobile_project_widget.dart';
import 'package:my_portfolio/data/models/project_model.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  _ProjectsSectionState createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsCubit, ProjectsState>(
      builder: (context, state) {
        var list = state.projects;
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
              SizedBox(
                  width: 0.3.sw,
                  child: const Divider(
                      color: PortfolioColors.secondary, thickness: 3)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Column(
                  children: [
                    const Text(
                      'Work Experience',
                      style: TextStyle(
                        fontSize: PortfolioTextTheme.fontSize28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 60.h),
                    ...list.workProjects.mapIndexed((i, project) {
                      // refactor this code to be one widget
                      return projectWidget(project, i);
                    }),
                    const Text(
                      'Freelance Projects',
                      style: TextStyle(
                        fontSize: PortfolioTextTheme.fontSize28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 60.h),
                    ...list.freelanceProjects.mapIndexed((i, project) {
                      // refactor this code to be one widget
                      return projectWidget(project, i);
                    }),
                    const Text(
                      'Side Projects',
                      style: TextStyle(
                        fontSize: PortfolioTextTheme.fontSize28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 60.h),
                    ...list.sideProjects.mapIndexed((i, project) {
                      // refactor this code to be one widget
                      return projectWidget(project, i);
                    }),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Column projectWidget(ProjectModel project, int i) {
    return Column(
      children: [
        if (PortfolioConstants.isDesktop()) ...{
          DesktopProjectWidget(project: project, isReversed: i.isEven)
        } else ...{
          MobileProjectWidget(project: project)
        },
        Container(height: 60.h),
      ],
    );
  }
}
