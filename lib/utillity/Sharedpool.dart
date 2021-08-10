import 'package:shared_preferences/shared_preferences.dart';

class SharedPool {
  static Future<String?> getNumber() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("save_number");
  }

  static saveNumber(value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("save_number", value);
  }
}
