import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../common/style/portfolio_text_theme.dart';
import '../../data/models/project_model.dart';

class ProjectInfoWidget extends StatelessWidget {
  final ProjectModel project;
  const ProjectInfoWidget({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            project.title,
            style: const TextStyle(
              fontSize: PortfolioTextTheme.fontSize28,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            project.subTitle,
            style: const TextStyle(
              fontSize: PortfolioTextTheme.fontSize16,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
