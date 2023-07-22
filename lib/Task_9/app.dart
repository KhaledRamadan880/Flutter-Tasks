import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futter_tasks/Task_9/whatsApp.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WhatsApp(),
      ),
    );
  }
}
