import 'package:equatable/equatable.dart';

class ProjectActionLinks extends Equatable {
  final String? demoVideo;
  final String? github;
  final String? appStore;
  final String? googlePlay;
  final String? website;

  const ProjectActionLinks({
    this.demoVideo,
    this.github,
    this.appStore,
    this.googlePlay,
    this.website,
  });

  @override
  List<Object?> get props => [demoVideo, github];

  factory ProjectActionLinks.fromJson(Map<String, dynamic> json) {
    return ProjectActionLinks(
      demoVideo: json['demo_video'] ?? '',
      github: json['github'] ?? '',
      appStore: json['appstore'] ?? '',
      googlePlay: json['playstore'] ?? '',
      website: json['website'] ?? '',
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
