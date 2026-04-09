import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ziad_dev/common/style/portfolio_colors.dart';

import '../../../common/portfolio_constants.dart';
import '../../../common/style/portfolio_text_theme.dart';
import '../data/models/project_model.dart';
import '../logic/projects_cubit/projects_cubit.dart';
import 'widgets/desktop_project_widget.dart';
import 'widgets/mobile_project_widget.dart';

enum _ProjectCategory { all, work, freelance, side }

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  _ProjectsSectionState createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  static const _categories = _ProjectCategory.values;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _categories.length, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  _ProjectCategory get _selected => _categories[_tabController.index];

  List<({ProjectModel project, String categoryLabel})> _filteredProjects(
      ProjectsState state) {
    final p = state.projects;
    String lbl(_ProjectCategory cat) => _label(cat);

    switch (_selected) {
      case _ProjectCategory.all:
        return [
          ...p.workProjects.map(
              (e) => (project: e, categoryLabel: lbl(_ProjectCategory.work))),
          ...p.freelanceProjects.map((e) =>
              (project: e, categoryLabel: lbl(_ProjectCategory.freelance))),
          ...p.sideProjects.map(
              (e) => (project: e, categoryLabel: lbl(_ProjectCategory.side))),
        ];
      case _ProjectCategory.work:
        return p.workProjects
            .map((e) => (project: e, categoryLabel: lbl(_selected)))
            .toList();
      case _ProjectCategory.freelance:
        return p.freelanceProjects
            .map((e) => (project: e, categoryLabel: lbl(_selected)))
            .toList();
      case _ProjectCategory.side:
        return p.sideProjects
            .map((e) => (project: e, categoryLabel: lbl(_selected)))
            .toList();
    }
  }

  String _label(_ProjectCategory cat) => switch (cat) {
        _ProjectCategory.all => 'all_projects_filter'.tr(),
        _ProjectCategory.work => 'work_experience_title'.tr(),
        _ProjectCategory.freelance => 'freelance_projects_title'.tr(),
        _ProjectCategory.side => 'side_projects_title'.tr(),
      };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsCubit, ProjectsState>(
      builder: (context, state) {
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
                child: const Divider(color: AppColors.secondary, thickness: 3),
              ),
              SizedBox(height: 32.h),
              _FilterChips(
                controller: _tabController,
                labels: _categories.map(_label).toList(),
              ),
              SizedBox(height: 48.h),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                switchInCurve: Curves.easeOut,
                switchOutCurve: Curves.easeIn,
                transitionBuilder: (child, animation) => FadeTransition(
                  opacity: animation,
                  child: child,
                ),
                child: _ProjectList(
                  key: ValueKey(_selected),
                  entries: _filteredProjects(state),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _FilterChips extends StatefulWidget {
  final TabController controller;
  final List<String> labels;

  const _FilterChips({required this.controller, required this.labels});

  @override
  State<_FilterChips> createState() => _FilterChipsState();
}

class _FilterChipsState extends State<_FilterChips> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTabChanged);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTabChanged);
    super.dispose();
  }

  void _onTabChanged() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      alignment: WrapAlignment.center,
      children: List.generate(widget.labels.length, (i) {
        final isActive = widget.controller.index == i;
        return GestureDetector(
          onTap: () => widget.controller.animateTo(i),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOut,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: isActive ? AppColors.accent : Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isActive ? AppColors.accent : AppColors.secondary,
                width: 1.5,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isActive) ...[
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
                Text(
                  widget.labels[i],
                  style: TextStyle(
                    fontSize: PortfolioTextTheme.fontSize16,
                    fontWeight: FontWeight.w600,
                    color: isActive ? AppColors.white : AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class _ProjectList extends StatelessWidget {
  final List<({ProjectModel project, String categoryLabel})> entries;

  const _ProjectList({super.key, required this.entries});

  @override
  Widget build(BuildContext context) {
    if (entries.isEmpty) return const SizedBox.shrink();
    return Column(
      children: entries.mapIndexed((i, entry) {
        return Column(
          children: [
            if (i > 0)
              const Divider(color: Color(0xFFA8F3D0), thickness: 1, height: 1),
            SizedBox(height: 48.h),
            if (PortfolioConstants.isDesktop())
              DesktopProjectWidget(
                project: entry.project,
                categoryLabel: entry.categoryLabel,
                isReversed: i.isEven,
              )
            else
              MobileProjectWidget(
                project: entry.project,
                categoryLabel: entry.categoryLabel,
              ),
            SizedBox(height: 48.h),
          ],
        );
      }).toList(),
    );
  }
}
