import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futter_tasks/Task_16/models/album_model.dart';
part 'api_state.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(ApiInitial());

  List<AlbumModel> albums = [];
  var data = [];

  getData() async {    
    emit(GetAlbumsLoadingState());
    try {
      await Dio()
          .get('https://jsonplaceholder.typicode.com/albums')
          .then((value) {
        print(value.statusCode);
        data = value.data;
        albums = data.map((e) => AlbumModel.fromJson(e)).toList();
      });
      emit(GetAlbumsSuccessedState());
    } catch (e) {
      print(e.toString());
    }
  }
}
