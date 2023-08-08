import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_11/Shared_Preference_App/screens/save_objects.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SaveObjects(),
    );
  }
}
