import 'package:shared_preferences/shared_preferences.dart';

class SaveInAppTour {
  Future<SharedPreferences> data = SharedPreferences.getInstance();

  Future<void> saveAddSiteStatus() async {
    final value = await data;

    value.setBool("addSite", true);
  }

  Future<bool> getAddSiteStatus() async {
    final value = await data;

    if (value.containsKey('addSite')) {
      bool? getData = value.getBool('addSite');
      return getData!;
    } else {
      return false;
    }
  }
}
