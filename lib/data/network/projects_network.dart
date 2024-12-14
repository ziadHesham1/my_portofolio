import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ProjectsNetwork {
  final Dio _dio;

  var headers = {'Content-Type': 'application/json'};

  final String baseURL = 'https://ziad-dev-e015d-default-rtdb.firebaseio.com/';

  ProjectsNetwork(Dio dio) : _dio = dio;
  Future<Map<String, dynamic>> getProjects() async {
    Map<String, dynamic> responseMap = {};
    try {
      Response response = await _dio.request(
        '$baseURL.json',
        options: Options(
          method: 'GET',
        ),
      );

      if (response.statusCode == 200) {
        var data = response.data;
        debugPrint('type = ${data.runtimeType}');
        if (data is Map<String, dynamic>) {
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
}
