import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futter_tasks/Task_18/features/cubit/api_cubit.dart';
import 'package:futter_tasks/Task_18/features/cubit/api_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<ApiCubit, ApiState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [                
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<ApiCubit>(context).chefSignIN();
                  },
                  child: const Text('Sign In'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<ApiCubit>(context).chefSendCode();
                  },
                  child: const Text('Send Code'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<ApiCubit>(context)
                        .chefChangeForgottenPass();
                  },
                  child: const Text('Change Forgotten Password'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<ApiCubit>(context).chefGetData();
                  },
                  child: const Text('Get Data'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<ApiCubit>(context).chefDelete();
                  },
                  child: const Text('Delete Chef'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
