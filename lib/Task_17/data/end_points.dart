class EndPoints {
  static const String baseUrl = 'https://food-api-omega.vercel.app/api/v1/';
  static const String chefSignIN = 'chef/signin';
  static const String chefSendCode = 'chef/send-code';
  static const String chefChangePass = 'chef/change-forgotten-password';
  static const String chefGetUser = 'chef/get-chef/';
  static const String chefDelete = 'chef/delete';

  static chegGetUserId(id) {
    return '$chefGetUser$id';
  }
}
