import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:ziad_dev/features/contact_me/logic/contact_info_cubit/contact_info_cubit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;
import 'package:easy_localization/easy_localization.dart'; // إضافة الاستيراد

import '../../../../common/style/portfolio_text_theme.dart';

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({
    super.key,
  });

  // Method to launch email client
  void _composeEmail(String email) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
    );
    final url = params.toString();
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      // Handle the case where the email client could not be opened
      print('Could not launch $url');
    }
  }

  // Method to copy text to clipboard
  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    html.window.open('tel:$text', '_self');

    // Optionally show a snackbar or other feedback
    print('Copied to clipboard: $text');
    SmartDialog.showToast('Phone number copied to clipboard');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      constraints: const BoxConstraints(maxWidth: 320, maxHeight: 250),
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        // vertical: 20.h,
      ),
      child: BlocBuilder<ContactInfoCubit, ContactInfoState>(
          builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            infoListTile(
              leading: const Icon(Icons.email),
              title: 'email_title'.tr(), // استخدام الترجمة
              subtitle: state.contactInfo.email,
              onTap: () => _composeEmail(state.contactInfo.email),
            ),
            infoListTile(
              leading: const Icon(Icons.phone),
              title: 'phone_number_title'.tr(), // استخدام الترجمة
              subtitle: state.contactInfo.phoneNumber,
              onTap: () {
                _copyToClipboard(state.contactInfo.phoneNumber);
                SmartDialog.showToast('Phone number copied to clipboard');
              },
            ),
            infoListTile(
              leading: const Icon(Icons.description),
              title: 'my_resume_title'.tr(), // استخدام الترجمة
              subtitle: 'View here'.tr(), // استخدام الترجمة
              onTap: () => launchUrl(Uri.parse(state.contactInfo.resumeLink)),
            ),
          ],
        );
      }),
    );
  }

  ListTile infoListTile({
    required Icon leading,
    required String title,
    required String subtitle,
    required Function()? onTap,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 4),
      leading: leading,
      title: Text(
        title,
        style: const TextStyle(fontSize: PortfolioTextTheme.fontSize18),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: PortfolioTextTheme.fontSize16),
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
    );
  }
}
