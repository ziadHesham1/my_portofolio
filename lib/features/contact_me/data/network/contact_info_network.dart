import '../../../../common/network/app_network_helper.dart';

class ContactInfoNetwork {
  final AppNetworkHelper _appNetworkHelper;
  ContactInfoNetwork(AppNetworkHelper appNetworkHelper)
      : _appNetworkHelper = appNetworkHelper;
  Future<Map<String, dynamic>> getContactInfo() async {
    Map<String, dynamic> response = await _appNetworkHelper.get('contact_info');
    return response;
  }
}
