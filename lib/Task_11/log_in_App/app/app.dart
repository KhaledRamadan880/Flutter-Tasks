import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_11/log_in_App/screens/splash.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {  


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "LoginApp",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
