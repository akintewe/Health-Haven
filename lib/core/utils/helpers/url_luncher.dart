import 'package:url_launcher/url_launcher.dart';

import '../../../values/enums.dart';
import 'app_toast.dart';

urlLauncher(String url,
    {required UrlLaunchType urlLaunchType,
    bool forceWebView = false,
    bool forceSafariVC = false}) async {
  Uri urlString = Uri.parse(url);
  if (urlLaunchType == UrlLaunchType.call) {
    urlString = Uri.parse('tel://$url');
  }

  if (urlString.toString().isNotEmpty) {
    try {
      if (await canLaunchUrl(urlString)) {
        await launchUrl(urlString);
      }
    } catch (err) {
      appToast('Cannot process' );
    }
  } else {
    appToast('Cannot process');
  }
}