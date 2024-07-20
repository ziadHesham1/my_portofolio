import 'package:flutter/material.dart';

import '../../data/models/project_model.dart';
import 'project_action_buttons.dart';
import 'project_images_widget.dart';
import 'project_info_widget.dart';

class DesktopProjectWidget extends StatelessWidget {
  final ProjectModel project;
  final bool isReversed;
  const DesktopProjectWidget({
    super.key,
    required this.project,
    required this.isReversed,
  });

  @override
  Widget build(BuildContext context) {
    final children = [
      Expanded(child: ProjectImagesWidget(project: project)),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProjectInfoWidget(project: project),
            ProjectActionButtons(project: project),
          ],
        ),
      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: isReversed ? children.reversed.toList() : children,
      ),
    );
  }
}
