import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  late SharedPreferences sharedPreferences;

  void setToken(token){
      sharedPreferences.setString('token', 'FOODAPI $token').toString();    
  }

  void decodeId() {
    String id = JwtDecoder.decode(
        sharedPreferences.getString('token').toString())['id'];
    sharedPreferences.setString('id', id);
  }

  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  String? getDataString(key) {
    return sharedPreferences.getString(key);
  }

  Future saveData({required key, required value}) async {
    return await sharedPreferences.setString(key, value);
  }
}
