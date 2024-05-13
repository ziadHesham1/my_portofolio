import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/data/models/projects_model.dart';

import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_text_theme.dart';
import '../../logic/cubit/projects_cubit.dart';
import '../widgets/desktop_project_widget.dart';
import '../widgets/mobile_project_widget.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: BlocBuilder<ProjectsCubit, ProjectsState>(
                builder: (context, state) {
              ProjectsModel projects = ProjectsModel.empty();
              if (state.status == ProjectsStatus.loaded) {
                projects = state.projects;
              } else {
                return const Center(child: CircularProgressIndicator());
              }
              if (projects.items.isEmpty) {
                return Container();
              }
              // return Container();
              return Column(
                children: projects.items.map((project) {
                  if (PortfolioConstants.isDesktop()) {
                    return DesktopProjectWidget(project: project);
                  } else {
                    return MobileProjectWidget(project: project);
                  }
                }).toList(),
              );
            }),
          ),
        ],
      ),
    );
  }
}
