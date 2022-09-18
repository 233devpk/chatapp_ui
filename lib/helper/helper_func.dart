import 'package:shared_preferences/shared_preferences.dart';

class HelperFunc {
  //keys
  static String userloggedInKey = "LOGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";

  //saving the data to sf

  //getting the data from sf
  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userloggedInKey);
  }
}
