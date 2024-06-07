import 'package:equatable/equatable.dart';

import 'project_action_links.dart';

enum ProjectType { mobile, website }

class ProjectModel extends Equatable {
  final String id;
  final ProjectActionLinks actionLinks;
  final List<String> images;
  final String subTitle;
  final String title;
  final ProjectType projectType;

  const ProjectModel({
    required this.id,
    required this.actionLinks,
    required this.images,
    required this.subTitle,
    required this.title,
    this.projectType = ProjectType.mobile,
  });

  @override
  List<Object?> get props => [id, actionLinks, images, subTitle, title];

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      id: json['id'],
      actionLinks: ProjectActionLinks.fromJson(json['action_links']),
      images: List<String>.from(json['images'] ?? []),
      subTitle: json['sub_title'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'action_links': actionLinks.toJson(),
      'images': images,
      'sub_title': subTitle,
      'title': title,
    };
  }

  ProjectModel copyWith({
    String? id,
    ProjectActionLinks? actionLinks,
    List<String>? images,
    String? subTitle,
    String? title,
  }) {
    return ProjectModel(
      id: id ?? this.id,
      actionLinks: actionLinks ?? this.actionLinks,
      images: images ?? this.images,
      subTitle: subTitle ?? this.subTitle,
      title: title ?? this.title,
    );
  }

  factory ProjectModel.empty() {
    return ProjectModel(
      id: '',
      actionLinks: ProjectActionLinks.empty(),
      images: const [],
      subTitle: '',
      title: '',
    );
  }
}
