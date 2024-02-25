import 'package:shared_preferences/shared_preferences.dart';

class LocalDataSource {
  static const String keyHongSC = 'keyHongSC';

  Future<String> getHongSC() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? hongSCRaw = prefs.getString(keyHongSC);
    if (hongSCRaw != null) return hongSCRaw;

    // default value
    prefs.setString(keyHongSC, "Ulsan Buljumeok");
    return prefs.getString(keyHongSC)!;
  }

  void setHongSC(String newProfile) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(keyHongSC, newProfile);
  }
}
