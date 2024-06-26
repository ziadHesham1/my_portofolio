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
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}

class AppColors {
  // Primary Colors
  static const Color deepPurple = Color(0xFF5A2D82);
  static const Color lavenderBlue = Color(0xFF7C83DB);

  // Secondary Colors
  static const Color softWhite = Color(0xFFF9F9FB);
  static const Color lightGray = Color(0xFFE0E0E0);
  static const Color lilac = Color(0xFFD6B1E6);

  // Accent Colors
  static const Color brightCoral = Color(0xFFE74C3C);
  static const Color softGreen = Color(0xFF2ECC71);

  // Text Colors
  static const Color buttonText = Color(0xFFFFFFFF);
  static const Color primaryText = deepPurple;
  static const Color secondaryText = lightGray;
}
