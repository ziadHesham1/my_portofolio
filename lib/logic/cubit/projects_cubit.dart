import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_portfolio/common/features/loading/data/repo/loading_repo.dart';

import '../../data/models/projects_model.dart';
import '../../data/repository/projects_repository.dart';

part 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  final ProjectsRepository _projectsRepository;
  final LoadingRepository _loadingRepository;
  ProjectsCubit(
    ProjectsRepository projectsRepository,
    LoadingRepository loadingRepository,
  )   : _projectsRepository = projectsRepository,
        _loadingRepository = loadingRepository,
        super(ProjectsState.init());

  getProjects() async {
    _loadingRepository.loadingStarted();
    emit(ProjectsState.init());
    ProjectsModel projects = await _projectsRepository.getProjects();
    await Future.delayed(const Duration(seconds: 1));

    emit(state.updateData(projects));
    _loadingRepository.loadingFinished();
  }
}
