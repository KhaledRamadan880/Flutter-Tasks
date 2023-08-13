import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Column(
            children: [
              //! Container
              SizedBox(
                width: double.maxFinite,
                height: 400,
                child: Column(
                  children: [
                    const SizedBox(height: 200),
                    const Text('Counter', style: TextStyle(fontSize: 40)),
                    const SizedBox(height: 10),
                    Text('${BlocProvider.of<CounterCubit>(context).counter}',
                        style: const TextStyle(fontSize: 40)),
                  ],
                ),
              ),
              const Spacer(),
              //! Floating Button
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .counterIncrement();
                          },
                          child: const Icon(Icons.add),
                        ),
                        const SizedBox(height: 10),
                        FloatingActionButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .counterDecrement();
                          },
                          child: const Icon(Icons.remove),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
