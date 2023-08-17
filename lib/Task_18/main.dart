import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_18/app/app.dart';
import 'package:futter_tasks/Task_18/core/database/local/cache/cache_helper.dart';
import 'package:futter_tasks/Task_18/core/services/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await sl<CacheHelper>().init();  
  runApp(const MyApp());
}
