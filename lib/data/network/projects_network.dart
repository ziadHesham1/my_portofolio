import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ProjectsNetwork {
  final Dio _dio;

  var headers = {'Content-Type': 'application/json'};

  final String baseURL = 'https://ziad-dev-e015d-default-rtdb.firebaseio.com/';

  ProjectsNetwork(Dio dio) : _dio = dio;
  Future<List<dynamic>?> getProjects() async {
    List<dynamic>? responseMap;
    try {
      Response response = await _dio.request(
        '$baseURL/projects.json',
        options: Options(
          method: 'GET',
        ),
      );

      if (response.statusCode == 200) {
        var data = response.data;
        debugPrint('type = ${data.runtimeType}');
        if (data is List<dynamic>) {
          responseMap = data;
        }
      } else {
        debugPrint(response.statusMessage);
      }
    } catch (e) {
      debugPrint('Failed to get projects, Error : $e');
    }
    return responseMap;
  }
/* 
  Future<void> addProject(ProjectModel project) async {
    try {
      var response = await _dio.request(
        '$baseURL/projects.json',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: json.encode(project.toJson()),
      );

      if (response.statusCode == 200) {
        debugPrint(json.encode(response.data));
      } else {
        debugPrint(response.statusMessage);
      }
    } catch (e) {
      debugPrint('Failed to add new project, Error : $e');
    }
  }

  Future<void> editProject(ProjectModel project) async {
    if (project.id == '') {
      throw ('Failed to edit project, Error : project id is empty');
    }
    try {
      var response = await _dio.request(
        '$baseURL/projects/${project.id}.json',
        options: Options(
          method: 'PATCH',
          headers: headers,
        ),
        data: json.encode(project.toJson()),
      );

      if (response.statusCode == 200) {
        debugPrint(json.encode(response.data));
      } else {
        debugPrint(response.statusMessage);
      }
    } catch (e) {
      debugPrint('Failed to edit project, Error : $e');
    }
  }

  Future<void> deleteProject(String projectNumber) async {
    try {
      var response = await _dio.request(
        '$baseURL/projects/-NxHOOyWmlBLG_gzp8HM.json',
        options: Options(
          method: 'DELETE',
        ),
      );

      if (response.statusCode == 200) {
        debugPrint(json.encode(response.data));
      } else {
        debugPrint(response.statusMessage);
      }
    } catch (e) {
      debugPrint('Failed to delete project, Error : $e');
    }
  }
 */
}
