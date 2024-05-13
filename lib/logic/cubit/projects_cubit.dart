import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/projects_model.dart';
import '../../data/repository/projects_repository.dart';

part 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  final ProjectsRepository _projectsRepository;
  ProjectsCubit(ProjectsRepository projectsRepository)
      : _projectsRepository = projectsRepository,
        super(ProjectsState.init());

  getProjects() async {
    emit(ProjectsState.init());
    ProjectsModel projects = await _projectsRepository.getProjects();
    emit(state.updateData(projects));
  }

/*   addProject(ProjectModel project) async {
    await _projectsRepository.addProject(project);

    emit(state.updateStatus(ProjectsStatus.updated));
    await getProjects();
  }

  editProject(ProjectModel project) async {
    await _projectsRepository.editProject(project);
    emit(state.updateStatus(ProjectsStatus.updated));
    await getProjects();
  }

  deleteProject(String projectNumber) async {
    await _projectsRepository.deleteProject(projectNumber);
    emit(state.updateStatus(ProjectsStatus.updated));
    await getProjects();
  }
 */
}
