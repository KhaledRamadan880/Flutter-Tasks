import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futter_tasks/Task_16/cubit/api_cubit.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApiCubit, ApiState>(
      builder: (context, state) {
        return Scaffold(
          // backgroundColor: Colors.,
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: const Text('Data'),
            centerTitle: true,
          ),
          body: state is GetAlbumsLoadingState
              ? const Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.purple,
                    color: Colors.white,
                  ),
                )
              : ListView.builder(
                  itemCount: BlocProvider.of<ApiCubit>(context).albums.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        children: [
                          //! Container
                          Container(
                            padding: const EdgeInsets.all(20),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 212, 212, 212),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //! Id
                                Text(
                                  'Id:  ${BlocProvider.of<ApiCubit>(context).albums[index].id}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                //! User Id
                                Text(
                                  'User Id:  ${BlocProvider.of<ApiCubit>(context).albums[index].userId}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                //! Title
                                Text(
                                  BlocProvider.of<ApiCubit>(context)
                                      .albums[index]
                                      .title,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
        );
      },
    );
  }
}
