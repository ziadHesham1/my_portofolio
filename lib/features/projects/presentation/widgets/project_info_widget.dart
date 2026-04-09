import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/style/portfolio_colors.dart';
import '../../../../common/style/portfolio_text_theme.dart';
import '../../../../common/widgets/portfolio_loading_widget.dart';
import '../../../../common/widgets/shimmer_widgets.dart';
import '../../data/models/project_model.dart';

class _TechChip extends StatelessWidget {
  final String label;
  const _TechChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.secondary, width: 1.5),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: PortfolioTextTheme.fontSize14,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
      ),
    );
  }
}

class ProjectInfoWidget extends StatelessWidget {
  final ProjectModel project;
  final String categoryLabel;

  const ProjectInfoWidget({
    super.key,
    required this.project,
    required this.categoryLabel,
  });

  @override
  Widget build(BuildContext context) {
    return PortfolioLoadingWidget(
      loadingChild: ShimmerWidgets.shimmerText(
        lines: 4,
        lineHeight: PortfolioTextTheme.fontSize16.toDouble(),
        width: double.infinity,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              color: AppColors.secondary.withOpacity(0.45),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              categoryLabel.toUpperCase(),
              style: const TextStyle(
                fontSize: PortfolioTextTheme.fontSize14,
                fontWeight: FontWeight.w700,
                color: Color(0xFF166434),
                letterSpacing: 0.8,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            project.title,
            style: const TextStyle(
              fontSize: PortfolioTextTheme.fontSize28,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            project.subTitle,
            style: const TextStyle(
              fontSize: PortfolioTextTheme.fontSize16,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          if (project.techStack.isNotEmpty) ...[
            SizedBox(height: 16.h),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: project.techStack
                  .map((tag) => _TechChip(label: tag))
                  .toList(),
            ),
          ],
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
