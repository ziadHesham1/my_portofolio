import '../../common/network/app_network_helper.dart';

class ProjectsNetwork {
  final AppNetworkHelper _appNetworkHelper;
  ProjectsNetwork(AppNetworkHelper appNetworkHelper)
      : _appNetworkHelper = appNetworkHelper;
  Future<Map<String, dynamic>> getProjects() async {
    Map<String, dynamic> response = await _appNetworkHelper.get('projects');

    return response;
  }
}
