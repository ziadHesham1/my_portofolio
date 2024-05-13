import 'package:equatable/equatable.dart';

class ProjectModel extends Equatable {
  final String id;
  final ActionLinks actionLinks;
  final List<String> images;
  final String subTitle;
  final String title;

  const ProjectModel({
    required this.id,
    required this.actionLinks,
    required this.images,
    required this.subTitle,
    required this.title,
  });

  @override
  List<Object?> get props => [id, actionLinks, images, subTitle, title];

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      id: json['id'],
      actionLinks: ActionLinks.fromJson(json['action_links']),
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
    ActionLinks? actionLinks,
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
      actionLinks: ActionLinks.empty(),
      images: const [],
      subTitle: '',
      title: '',
    );
  }
}

class ActionLinks extends Equatable {
  final String demoVideo;
  final String github;

  const ActionLinks({
    required this.demoVideo,
    required this.github,
  });

  @override
  List<Object?> get props => [demoVideo, github];

  factory ActionLinks.fromJson(Map<String, dynamic> json) {
    return ActionLinks(
      demoVideo: json['demo_video'] ?? '',
      github: json['github'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'demo_video': demoVideo,
      'github': github,
    };
  }

  ActionLinks copyWith({
    String? demoVideo,
    String? github,
  }) {
    return ActionLinks(
      demoVideo: demoVideo ?? this.demoVideo,
      github: github ?? this.github,
    );
  }

  factory ActionLinks.empty() {
    return const ActionLinks(
      demoVideo: '',
      github: '',
    );
  }
}
