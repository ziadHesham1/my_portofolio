import 'package:flutter/material.dart';
import 'package:ziad_dev/common/style/portfolio_colors.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        title: const Text('Project Details'),
      ),
      body: const Center(
        child: Text(''),
      ),
    );
  }
}
