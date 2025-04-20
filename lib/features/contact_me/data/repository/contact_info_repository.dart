import 'package:flutter/widgets.dart';

import '../models/contact_info_model.dart';
import '../network/contact_info_network.dart';

class ContactInfoRepository {
  final ContactInfoNetwork _contactInfoNetwork;

  const ContactInfoRepository(ContactInfoNetwork contactInfoNetwork)
      : _contactInfoNetwork = contactInfoNetwork;
  Future<ContactInfoModel> getContactInfo() async {
    Map<String, dynamic> response = await _contactInfoNetwork.getContactInfo();
    ContactInfoModel contactInfoList = ContactInfoModel.empty();

    if (response.isNotEmpty) {
      try {
        contactInfoList = ContactInfoModel.fromJson(response);
        return contactInfoList;
      } catch (e) {
        debugPrint('Failed to get contactInfo, Error : $e');
      }
    } else {
      debugPrint('Failed to get contactInfo,  is null');
    }
    return contactInfoList;
  }
}
