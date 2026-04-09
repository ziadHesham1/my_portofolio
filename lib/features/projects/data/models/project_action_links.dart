import 'package:equatable/equatable.dart';

class ProjectActionLinks extends Equatable {
  final String? demoVideo;
  final String? github;
  final String? appStore;
  final String? googlePlay;
  final String? website;
  final String? externalReference;

  const ProjectActionLinks({
    this.demoVideo,
    this.github,
    this.appStore,
    this.googlePlay,
    this.website,
    this.externalReference,
  });

  @override
  List<Object?> get props =>
      [demoVideo, github, appStore, googlePlay, website, externalReference];

  factory ProjectActionLinks.fromJson(Map<String, dynamic> json) {
    return ProjectActionLinks(
      demoVideo: json['demo_video'] ?? '',
      github: json['github'] ?? '',
      appStore: json['appstore'] ?? '',
      googlePlay: json['playstore'] ?? '',
      website: json['website'] ?? '',
      externalReference: json['external_reference'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'demo_video': demoVideo,
      'github': github,
      'appstore': appStore,
      'playstore': googlePlay,
      'website': website,
      'external_reference': externalReference,
    };
  }

  ProjectActionLinks copyWith({
    String? demoVideo,
    String? github,
    String? appStore,
    String? googlePlay,
    String? website,
    String? externalReference,
  }) {
    return ProjectActionLinks(
      demoVideo: demoVideo ?? this.demoVideo,
      github: github ?? this.github,
      appStore: appStore ?? this.appStore,
      googlePlay: googlePlay ?? this.googlePlay,
      website: website ?? this.website,
      externalReference: externalReference ?? this.externalReference,
    );
  }

  factory ProjectActionLinks.empty() {
    return const ProjectActionLinks(
      demoVideo: '',
      github: '',
      appStore: '',
      googlePlay: '',
      website: '',
      externalReference: '',
    );
  }
}
