import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_7/login_page.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task 7',
      home: SafeArea(child: LoginPage()),
    );
  }
}
