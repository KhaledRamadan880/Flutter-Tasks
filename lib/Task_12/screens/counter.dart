import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'Counter:',
            style: TextStyle(fontSize: 40),
          ),
          const SizedBox(height: 10),
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Text(
                '${BlocProvider.of<CounterCubit>(context).counter}',
                style: const TextStyle(fontSize: 40),
              );
            },
          ),
        ],
      ),
    );
  }
}
