import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../../../../common/portfolio_constants.dart';
import '../models/contact_info_model.dart';
import '../network/contact_info_network.dart';

class ContactInfoRepository {
  final ContactInfoNetwork _contactInfoNetwork;

  const ContactInfoRepository(ContactInfoNetwork contactInfoNetwork)
      : _contactInfoNetwork = contactInfoNetwork;

  Future<ContactInfoModel> getContactInfo() async {
    if (!PortfolioConstants.isProduction) {
      try {
        final jsonStr =
            await rootBundle.loadString('portfolio_data.json');
        final json = jsonDecode(jsonStr) as Map<String, dynamic>;
        return ContactInfoModel.fromJson(json['contact_info']);
      } catch (e) {
        debugPrint('Failed to load local contact info data: $e');
        return ContactInfoModel.empty();
      }
    }

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
