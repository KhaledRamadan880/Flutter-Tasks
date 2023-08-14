import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futter_tasks/Task_17/data/end_points.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'chef_state.dart';

class ChefCubit extends Cubit<ChefState> {
  ChefCubit() : super(ChefInitial());

  //! Sign IN
  void chefSignIn() async {
    await Dio().post(EndPoints.baseUrl + EndPoints.chefSignIN, data: {
      "email": "khaledramdan880@gmail.com",
      "password": "khaled123"
    }).then((value) {
      print(value.statusCode);
      print(value.data);
    }).catchError((e) {
      print(e.toString());
    });
  }

  //! Send Code
  void chefSendCode() async {
    await Dio().post(EndPoints.baseUrl + EndPoints.chefSendCode,
        data: {"email": "khaledramdan880@gmail.com"}).then((value) {
      print(value.data);
    }).catchError((e) {
      print(e.toString());
    });
  }

  //! Change fotgetten password
  void chefChangeForgettenPass() async {
    await Dio()
        .patch(
          EndPoints.baseUrl + EndPoints.chefChangePass,
          data: {
            "email": "khaledramdan880@gmail.com",
            "password": "khaled123",
            "confirmPassword": "khaled123",
            "code": "523722"
          },
        )
        .then((value) => print(value.data))
        .catchError((e) {
          print(e.toString());
        });
  }

  //! Get user data
  void getChefData() async {
    String token =
        'FOODAPI eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZGE4NDhmMzI1ZTY4NDA3ZWI4ZDE2MyIsImVtYWlsIjoia2hhbGVkcmFtZGFuODgwQGdtYWlsLmNvbSIsIm5hbWUiOiJraGFsZWQiLCJpYXQiOjE2OTIwNDI0MTR9.DyvjHm0X5BrKClUzMNPbmk2SSmn2S_9DMQo9TFIcK3s';
    var decodedToken = JwtDecoder.decode(token);
    var id = decodedToken['id'];
    await Dio(BaseOptions(headers: {'token': token}))
        .get(EndPoints.baseUrl + EndPoints.chegGetUserId(id))
        .then((value) => print(value.data))
        .catchError((e) {
      print(e.toString());
    });
  }

  //! Delete Chef
  void chefDelete() async {
    String token =
        'FOODAPI eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZGE4NDhmMzI1ZTY4NDA3ZWI4ZDE2MyIsImVtYWlsIjoia2hhbGVkcmFtZGFuODgwQGdtYWlsLmNvbSIsIm5hbWUiOiJraGFsZWQiLCJpYXQiOjE2OTIwNDI0MTR9.DyvjHm0X5BrKClUzMNPbmk2SSmn2S_9DMQo9TFIcK3s';
    var decodedToken = JwtDecoder.decode(token);
    var id = decodedToken['id'];
    await Dio(BaseOptions(headers: {'token': token}))
        .delete(EndPoints.baseUrl + EndPoints.chefDelete,
            queryParameters: {'id': id})
        .then((value) => print(value.data))
        .catchError((e) {
          print(e.toString());
        });
  }
}
