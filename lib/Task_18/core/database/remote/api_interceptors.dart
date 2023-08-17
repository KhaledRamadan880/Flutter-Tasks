import 'package:dio/dio.dart';
import 'package:futter_tasks/Task_18/core/database/local/cache/cache_helper.dart';
import 'package:futter_tasks/Task_18/core/services/service_locator.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['token'] =
        "FOODAPI ${sl<CacheHelper>().getDataString('token')}";    
    // var decodedToken = JwtDecoder.decode(token);
    // var id = decodedToken['id'];
    // options.queryParameters['id'] = id;
    super.onRequest(options, handler);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {

      String? token = response.data['token'];
      sl<CacheHelper>().setToken(token);

    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }
}
