import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_10/features/auth/screens/on_boarding_one.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreenOne(),
    );
  }
}
