import 'package:equatable/equatable.dart';
import 'package:my_portfolio/data/models/projects_json.dart';
import 'project_model.dart';

class ProjectsModel extends Equatable {
  final List<ProjectModel> sideProjects;
  final List<ProjectModel> workProjects;
  final List<ProjectModel> freelanceProjects;

  const ProjectsModel({
    required this.sideProjects,
    required this.workProjects,
    required this.freelanceProjects,
  });

  @override
  List<Object?> get props => [sideProjects, workProjects, freelanceProjects];

  // Factory to create an empty ProjectsModel
  factory ProjectsModel.empty() {
    return const ProjectsModel(
      sideProjects: [],
      workProjects: [],
      freelanceProjects: [],
    );
  }

  // Factory to create a dummy ProjectsModel
  factory ProjectsModel.dummy() {
    return ProjectsModel(
      sideProjects: [
        ProjectModel.empty().copyWith(projectType: ProjectType.website),
      ],
      workProjects: [
        ProjectModel.empty().copyWith(projectType: ProjectType.mobile),
        ProjectModel.empty(),
      ],
      freelanceProjects: [
        ProjectModel.empty().copyWith(projectType: ProjectType.mobile),
      ],
    );
  }

  // Factory to create a ProjectsModel from JSON
  factory ProjectsModel.fromJson(Map<String, dynamic> json) {
    return ProjectsModel(
      sideProjects: _parseProjectList(json['side_projects']),
      workProjects: _parseProjectList(json['work_projects']),
      freelanceProjects: _parseProjectList(json['freelance_projects']),
    );
  }

  // Convert the ProjectsModel back to JSON
  Map<String, dynamic> toJson() {
    return {
      'side_projects': sideProjects.map((project) => project.toJson()).toList(),
      'work_projects': workProjects.map((project) => project.toJson()).toList(),
      'freelance_projects':
          freelanceProjects.map((project) => project.toJson()).toList(),
    };
  }

  // Helper to parse a list of ProjectModel from JSON
  static List<ProjectModel> _parseProjectList(dynamic jsonList) {
    if (jsonList is List) {
      return jsonList
          .whereType<Map<String, dynamic>>()
          .map(ProjectModel.fromJson)
          .toList();
    }
    return [];
  }
}
