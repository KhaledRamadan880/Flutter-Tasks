import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futter_tasks/Task_18/core/database/local/cache/cache_helper.dart';
import 'package:futter_tasks/Task_18/core/database/remote/api_consumer.dart';
import 'package:futter_tasks/Task_18/core/database/remote/end_points.dart';
import 'package:futter_tasks/Task_18/core/services/service_locator.dart';
import 'package:futter_tasks/Task_18/features/cubit/api_state.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(ApiInitial());

  void chefSignIN() async {
    await sl<ApiConsumer>().post(EndPoints.chefSignIn, data: {
      "email": "khaledramdan880@gmail.com",
      "password": "khaled123",
    }).then((value) {
      print(value);
    }).catchError((e) {
      print(e.toString());
    });
  }

  void chefSendCode() async {
    await sl<ApiConsumer>().post(
      EndPoints.chefSendCode,
      data: {
        "email": "khaledramdan880@gmail.com",
      },
    ).then((value) {
      print(value);
    }).catchError((e) {
      print(e.toString());
    });
  }

  void chefChangeForgottenPass() async {
    await sl<ApiConsumer>().patch(
      EndPoints.chefChangeForgotPass,
      data: {
        "email": "khaledramdan880@gmail.com",
        "password": "khaled123",
        "confirmPassword": "khaled123",
        "code": "513908"
      },
    ).then((value) {
      print(value);
    }).catchError((e) {
      print(e.toString());
    });
  }

  Future chefGetData() async {
    await sl<ApiConsumer>().get(EndPoints.chefGet).then((value) {
      print(value);
    }).catchError((e) {
      print(e.toString());
    });
  }

  void chefDelete() async {
    // sl<CacheHelper>().decodeId();
    await sl<ApiConsumer>().delete(EndPoints.chefDelete, queryParameters: {
      'id': '${sl<CacheHelper>().getDataString('id')}',
    }).then((value) {
      print(value);
    }).catchError((e) {
      print(e.toString());
      print(sl<CacheHelper>().getDataString('token'));
      print(sl<CacheHelper>().getDataString('id'));
    });
  }
}
