import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ziad_dev/common/style/portfolio_colors.dart';

import '../../../common/navigation/navigation.dart';
import '../../../common/portfolio_constants.dart';
import '../../../common/style/portfolio_text_theme.dart';
import '../logic/projects_cubit/projects_cubit.dart';
import 'widgets/desktop_project_widget.dart';
import 'widgets/mobile_project_widget.dart';
import 'package:ziad_dev/features/projects/data/models/project_model.dart';

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
              Text(
                'projects_title'.tr(),
                style: const TextStyle(
                  fontSize: PortfolioTextTheme.fontSize40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'projects_subtitle'.tr(),
                style: const TextStyle(
                  fontSize: PortfolioTextTheme.fontSize18,
                ),
              ),
              SizedBox(
                  width: 0.3.sw,
                  child:
                      const Divider(color: AppColors.secondary, thickness: 3)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Column(
                  children: [
                    Text(
                      'work_experience_title'.tr(),
                      style: const TextStyle(
                        fontSize: PortfolioTextTheme.fontSize28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 60.h),
                    ...list.workProjects.mapIndexed((i, project) {
                      // refactor this code to be one widget
                      return projectWidget(project, i);
                    }),
                    Text(
                      'freelance_projects_title'.tr(),
                      style: const TextStyle(
                        fontSize: PortfolioTextTheme.fontSize28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 60.h),
                    ...list.freelanceProjects.mapIndexed((i, project) {
                      // refactor this code to be one widget
                      return projectWidget(project, i);
                    }),
                    Text(
                      'side_projects_title'.tr(),
                      style: const TextStyle(
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

  Widget projectWidget(ProjectModel project, int i) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(AppRoutes.projectDetails);
      },
      child: Column(
        children: [
          if (PortfolioConstants.isDesktop()) ...{
            DesktopProjectWidget(project: project, isReversed: i.isEven)
          } else ...{
            MobileProjectWidget(project: project)
          },
          Container(height: 60.h),
        ],
      ),
    );
  }
}
