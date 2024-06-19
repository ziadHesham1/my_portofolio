import 'package:equatable/equatable.dart';

class ProjectActionLinks extends Equatable {
  final String demoVideo;
  final String? github;

  const ProjectActionLinks({
    required this.demoVideo,
    this.github,
  });

  @override
  List<Object?> get props => [demoVideo, github];

  factory ProjectActionLinks.fromJson(Map<String, dynamic> json) {
    return ProjectActionLinks(
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

  ProjectActionLinks copyWith({
    String? demoVideo,
    String? github,
  }) {
    return ProjectActionLinks(
      demoVideo: demoVideo ?? this.demoVideo,
      github: github ?? this.github,
    );
  }

  factory ProjectActionLinks.empty() {
    return const ProjectActionLinks(
      demoVideo: '',
      github: '',
    );
  }
}
