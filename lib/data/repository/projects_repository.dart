import 'package:flutter/widgets.dart';

import '../models/projects_model.dart';
import '../network/projects_network.dart';

class ProjectsRepository {
  final ProjectsNetwork _projectsNetwork;

  const ProjectsRepository(ProjectsNetwork projectsNetwork)
      : _projectsNetwork = projectsNetwork;
  Future<ProjectsModel> getProjects() async {
    Map<String, dynamic> response = await _projectsNetwork.getProjects();
    ProjectsModel projectsList = ProjectsModel.empty();

    if (response.isNotEmpty) {
      try {
        projectsList = ProjectsModel.fromJson(response['projects']);
        return projectsList;
      } catch (e) {
        debugPrint('Failed to get projects, Error : $e');
      }
    } else {
      debugPrint('Failed to get projects,  is null');
    }
    return projectsList;
  }

  /*  addProject(ProjectModel project) async {
    try {
      await _projectsNetwork.addProject(project);
      SmartDialog.showToast('Item Added Successfully');
    } catch (e) {
      debugPrint('Failed To Add Item, Error : $e');
      SmartDialog.showToast('Failed To Add Item');
    }
  }

  editProject(ProjectModel project) async {
    try {
      await _projectsNetwork.editProject(project);
      SmartDialog.showToast('Item Edited Successfully');
    } catch (e) {
      debugPrint('Failed to Edit Item, Error : $e');
      SmartDialog.showToast('Failed To Edit Item');
    }
  }

  deleteProject(String projectNumber) async {
    try {
      await _projectsNetwork.deleteProject(projectNumber);
      SmartDialog.showToast('Item Deleted Successfully');
    } catch (e) {
      debugPrint('Failed to Delete projects, Error : $e');
      SmartDialog.showToast('Failed To Delete Item');
    }
  }
 */
}
