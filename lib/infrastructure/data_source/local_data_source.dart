import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'local_data_source.g.dart';

@riverpod
LocalDataSource localDataSource(Ref ref) => LocalDataSource();

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
