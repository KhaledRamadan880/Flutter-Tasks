import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/chef_cubit.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    ChefCubit().chefDelete();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChefCubit(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
        ),
      ),
    );
  }
}
