import 'package:equatable/equatable.dart';

import 'project_model.dart';

class ProjectsModel extends Equatable {
  final List<ProjectModel> items;

  const ProjectsModel({required this.items});

  @override
  List<Object?> get props => [items];

  factory ProjectsModel.empty() {
    return const ProjectsModel(items: []);
  }

  factory ProjectsModel.fromJson(List<dynamic> json) {
    List<ProjectModel> items = [];

    for (var item in json) {
      if (item is Map<String, dynamic>) {
        items.add(ProjectModel.fromJson(item));
      }
    }
    return ProjectsModel(items: items);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    for (var project in items) {
      json[project.id] = project.toJson();
    }
    return json;
  }
}
