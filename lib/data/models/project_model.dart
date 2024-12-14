import 'package:equatable/equatable.dart';
import 'project_action_links.dart';

enum ProjectType { mobile, website }

class ProjectModel extends Equatable {
  final String id;
  final String title;
  final String subTitle;
  final List<String> images;
  final String thumbnail;
  final ProjectActionLinks actionLinks;
  final ProjectType projectType;

  const ProjectModel({
    required this.id,
    required this.actionLinks,
    required this.thumbnail,
    required this.images,
    required this.subTitle,
    required this.title,
    this.projectType = ProjectType.mobile,
  });

  @override
  List<Object?> get props =>
      [id, actionLinks, images, subTitle, title, projectType];

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      id: json['id'],
      title: json['title'],
      subTitle: json['sub_title'],
      thumbnail: json['thumbnail'],
      images: List<String>.from(json['images'] ?? []),
      actionLinks: ProjectActionLinks.fromJson(
        json['action_links'] ?? {},
      ), // Convert to Map<String, dynamic>
      projectType: json['project_type'] != null
          ? ProjectType.values.firstWhere(
              (e) => e.toString() == 'ProjectType.${json['project_type']}')
          : ProjectType.mobile,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'sub_title': subTitle,
      'thumbnail': thumbnail,
      'images': images,
      'action_links': actionLinks.toJson(),
      'project_type':
          projectType.toString().split('.').last, // Convert enum to string
    };
  }

  ProjectModel copyWith({
    String? id,
    ProjectActionLinks? actionLinks,
    List<String>? images,
    String? thumbnail,
    String? subTitle,
    String? title,
    ProjectType? projectType,
  }) {
    return ProjectModel(
      id: id ?? this.id,
      actionLinks: actionLinks ?? this.actionLinks,
      images: images ?? this.images,
      thumbnail: thumbnail ?? this.thumbnail,
      subTitle: subTitle ?? this.subTitle,
      title: title ?? this.title,
      projectType: projectType ?? this.projectType,
    );
  }

  factory ProjectModel.empty() {
    return ProjectModel(
      id: '',
      thumbnail: '',
      actionLinks: ProjectActionLinks.empty(),
      images: const [],
      subTitle: '',
      title: '',
    );
  }
}
