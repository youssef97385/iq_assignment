
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iq_sample_app/core/app_language.dart';
import 'package:iq_sample_app/core/constent.dart';
import 'iprefs_helper.dart';

class PrefsHelper implements IPrefsHelper {
  @override
  Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }




}
