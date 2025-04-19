import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AppNetworkHelper {
  final Dio _dio;

  var headers = {'Content-Type': 'application/json'};

  final String baseURL = 'https://ziad-dev-e015d-default-rtdb.firebaseio.com/';

  AppNetworkHelper(Dio dio) : _dio = dio;
  Future<Map<String, dynamic>> get(String? node) async {
    Map<String, dynamic> responseMap = {};
    var url = baseURL;
    if (node != null) {
      url = '$baseURL/$node';
    }
    url = "$url.json";
    try {
      Response response = await _dio.request(
        url,
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
      debugPrint('Failed to get $node, Error : $e');
    }
    return responseMap;
  }
}
