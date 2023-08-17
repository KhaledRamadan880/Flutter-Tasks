import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futter_tasks/Task_18/features/cubit/api_cubit.dart';
import 'package:futter_tasks/Task_18/features/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ApiCubit(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
