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

  factory ProjectsModel.fromJson(Map<String, dynamic> json) {
    List<ProjectModel> items = [];
    json.forEach((key, value) {
      items.add(ProjectModel.fromJson({'id': key, ...value}));
    });
    return ProjectsModel(items: items);
  }
}
