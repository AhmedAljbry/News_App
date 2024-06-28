import 'package:shared_preferences/shared_preferences.dart';

class CachHealper
{
  static late SharedPreferences sharedPreferences;

  static inil()async
  {
    sharedPreferences=await SharedPreferences.getInstance();
  }
  static Future<bool>setBool({
    required String key,
    required bool value
})async
  {
    return sharedPreferences.setBool(key, value);
  }
  static bool? getBool(String key)
  {
    return sharedPreferences.getBool(key);
  }
}