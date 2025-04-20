import 'package:flutter/material.dart';

import '../../data/models/project_model.dart';
import 'project_action_buttons.dart';
import 'project_images_widget.dart';
import 'project_info_widget.dart';

class MobileProjectWidget extends StatelessWidget {
  final ProjectModel project;
  const MobileProjectWidget({
    required this.project,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: ProjectInfoWidget(project: project),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: ProjectImagesWidget(project: project),
        ),
        const SizedBox(height: 30),
        ProjectActionButtons(project: project),
      ],
    );
  }
}
