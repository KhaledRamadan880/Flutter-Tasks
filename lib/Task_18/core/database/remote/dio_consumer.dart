import 'package:dio/dio.dart';
import 'package:futter_tasks/Task_18/core/database/remote/api_consumer.dart';
import 'package:futter_tasks/Task_18/core/database/remote/api_interceptors.dart';
import 'package:futter_tasks/Task_18/core/database/remote/end_points.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer(this.dio) {
    dio.options.baseUrl = EndPoints.baseUrl;
    dio.interceptors.add(ApiInterceptors());
    // dio.interceptors.add(LogInterceptor(
    //   error: true,
    // ));
  }

  @override
  Future delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await dio.delete(
      path,
      data: data,
      queryParameters: queryParameters,
    );
  }

  @override
  Future get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await dio.get(
      path,
      data: data,
      queryParameters: queryParameters,
    );
  }

  @override
  Future patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await dio.patch(
      path,
      data: data,
      queryParameters: queryParameters,
    );
  }

  @override
  Future post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
    );
  }
}
