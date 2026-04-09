import 'package:flutter/material.dart';

import '../../data/models/project_model.dart';
import 'project_action_buttons.dart';
import 'project_images_widget.dart';
import 'project_info_widget.dart';

class MobileProjectWidget extends StatelessWidget {
  final ProjectModel project;
  final String categoryLabel;

  const MobileProjectWidget({
    super.key,
    required this.project,
    required this.categoryLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectInfoWidget(project: project, categoryLabel: categoryLabel),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: ProjectImagesWidget(project: project),
        ),
        const SizedBox(height: 16),
        ProjectActionButtons(project: project),
      ],
    );
  }
}
