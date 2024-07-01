import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

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
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // Handle the case where the email client could not be opened
      print('Could not launch $url');
    }
  }

  // Method to copy text to clipboard
  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    // Optionally show a snackbar or other feedback
    print('Copied to clipboard: $text');
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 4),
            leading: const Icon(Icons.email),
            title: const Text('E-mail'),
            subtitle: const Text(
              'ziadhesham280@gmail.com',
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () => _composeEmail('ziadhesham280@gmail.com'),
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            contentPadding: const EdgeInsets.symmetric(horizontal: 4),
            title: const Text('Phone Number'),
            subtitle: const Text('+201116791408'),
            onTap: () {
              _copyToClipboard('+201116791408');
              SmartDialog.showToast('Phone number copied to clipboard');
            },
          ),
          ListTile(
            leading: const Icon(Icons.description),
            contentPadding: const EdgeInsets.symmetric(horizontal: 4),
            title: const Text('My Resume'),
            subtitle: const Text('View here'),
            onTap: () => launchUrl(Uri.parse(
                'https://drive.google.com/file/d/1uqJ1bcxqaoylcmDAGN92gMCm5g4OT_7C/view')),
          ),
        ],
      ),
    );
  }
}
