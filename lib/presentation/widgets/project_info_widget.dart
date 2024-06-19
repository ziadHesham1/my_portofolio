import 'package:flutter/material.dart';
import '../../data/models/project_model.dart';

class ProjectInfoWidget extends StatelessWidget {
  final ProjectModel project;
  const ProjectInfoWidget({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          project.title,
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          project.subTitle,
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
