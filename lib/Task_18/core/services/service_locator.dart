import 'package:dio/dio.dart';
import 'package:futter_tasks/Task_18/core/database/local/cache/cache_helper.dart';
import 'package:futter_tasks/Task_18/core/database/remote/api_consumer.dart';
import 'package:futter_tasks/Task_18/core/database/remote/dio_consumer.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setup() {
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(sl()));
  sl.registerLazySingleton(() => CacheHelper());
}
