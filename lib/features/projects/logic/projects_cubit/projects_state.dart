part of 'projects_cubit.dart';
// part of 'product_cubit.dart';

enum ProjectsStatus { init, updated, loaded, failed }

class ProjectsState extends Equatable {
  final ProjectsModel projects;
  final ProjectsStatus status;

  const ProjectsState({
    required this.projects,
    required this.status,
  });

  factory ProjectsState.init() {
    return ProjectsState(
      // to show loading items until data loads
      projects: ProjectsModel.dummy(),
      status: ProjectsStatus.init,
    );
  }

  ProjectsState updateData(ProjectsModel projectModel) {
    return _copyWith(
      projectsModel: projectModel,
      status: ProjectsStatus.loaded,
    );
  }

  ProjectsState updateStatus(ProjectsStatus newStatus) {
    return _copyWith(
      status: newStatus,
    );
  }

  ProjectsState _copyWith({
    ProjectsModel? projectsModel,
    ProjectsStatus? status,
  }) {
    return ProjectsState(
      projects: projectsModel ?? projects,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [projects, status];
}
