import 'package:url_launcher/url_launcher.dart';

class UrlHelper {
  static void launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      // Handle the case where the URL could not be launched
      print('Could not launch $url');
    }
  }
}
