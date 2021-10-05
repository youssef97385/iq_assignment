

import 'package:shared_preferences/shared_preferences.dart';

abstract class IPrefsHelper {
  Future<SharedPreferences> getPrefs();


}
