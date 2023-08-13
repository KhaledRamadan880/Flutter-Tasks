import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futter_tasks/Task_12/app/app.dart';
import 'package:futter_tasks/Task_12/cubit/counter_cubit.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => CounterCubit(),
    child: const MyApp(),
  ));
}
