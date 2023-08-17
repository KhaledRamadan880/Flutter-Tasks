import 'package:futter_tasks/Task_18/core/database/local/cache/cache_helper.dart';
import 'package:futter_tasks/Task_18/core/services/service_locator.dart';

class EndPoints {
  static const String baseUrl = 'https://food-api-omega.vercel.app/api/v1/';
  static const String chefSignIn = 'chef/signin';
  static const String chefSendCode = 'chef/send-code';
  static const String chefChangeForgotPass = 'chef/change-forgotten-password';
  static const String chefDelete = 'chef/delete';
  static  String chefGet = 'chef/get-chef/${sl<CacheHelper>().getDataString('id')}';

  // String chefGetData() {
  //   id = sl<CacheHelper>().getDataString(key)
  //   return '$chefGet$id';
  // }
}
