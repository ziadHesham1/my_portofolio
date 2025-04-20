import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ziad_dev/common/style/portfolio_colors.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text("project_details".tr()),
      ),
      body: const Center(
        child: Text(''),
      ),
    );
  }
}
