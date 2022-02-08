// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:convert';
import 'package:clocker_app/provider/generic_provider.dart';
import 'package:clocker_app/src/task/model/task_model.dart';
import 'package:dio/dio.dart';

class TaskProvider {
  // ignore: non_constant_identifier_names
  final String _stagging_url = GenericProvider().getStaginURL();

  Future<List<TaskModel>> getTasks(String token) async {
    try {
      Response response = await Dio().get(
        '$_stagging_url/task/all',
        options: Options(
          headers: {
            //'Authorization': '$token',
          },
        ),
      );
      var aux = response.data['message'];

      //print(aux);
      return parseToTasks(aux);
    } catch (e) {
      print(e);
      print('HA OCURRIDO UN ERROR');
      return [];
    }
  }

  Future<List<TaskModel>> getTasksByDay(
    String token,
    String idUser,
    String day,
    String campusId,
  ) async {
    //print('$_stagging_url/task/user/$idUser/campus/$campusId/$day');
    try {
      Response response = await Dio().get(
        '$_stagging_url/task/user/$idUser/campus/$campusId/$day',
        options: Options(
          headers: {
            //'Authorization': '$token',
          },
        ),
      );

      var aux = response.data['message'];

      return parseToTasks(aux);
    } catch (e) {
      print(e);
      print('HA OCURRIDO UN ERROR');
      return [];
    }
  }

  Future<int> finishTask(
    String id,
    String idUser,
    String token,
  ) async {
    try {
      Response response = await Dio().post(
        '$_stagging_url/task/$id/endedBy/$idUser',
        options: Options(
          followRedirects: false,
          headers: {
            "Content-Type": "application/json",
            "Authorization": token,
          },
        ),
      );
      //print(response.data);
      return response.statusCode ?? 0;
    } catch (e) {
      print(e);
      print('HA OCURRIDO UN ERROR');
      return 0;
    }
  }

  Future<int> workToTask(
    String id,
    String idUser,
    String token,
  ) async {
    print('$_stagging_url/task/$id/working/$idUser/start');

    try {
      Response response = await Dio().patch(
        '$_stagging_url/task/$id/working/$idUser/start',
        options: Options(
          followRedirects: false,
          headers: {
            "Content-Type": "application/json",
            "Authorization": token,
          },
        ),
      );
      //print(response.data);
      return response.statusCode ?? 0;
    } catch (e) {
      print(e);
      print('HA OCURRIDO UN ERROR');
      return 0;
    }
  }

  Future<int> patchTask(
    String id,
    String idUser,
    String name,
    String token,
  ) async {
    try {
      var data = {
        "endedBy": [
          {"_id": idUser, "name": name}
        ]
      };

      Response response = await Dio().patch(
        '$_stagging_url/task/$id',
        data: jsonEncode(data),
        options: Options(
          followRedirects: false,
          headers: {
            Headers.contentLengthHeader: data.length,
            "Content-Type": "application/json",
            "Authorization": token,
          },
        ),
      );
      //print(response.data);
      return response.statusCode ?? 0;
    } catch (e) {
      print(e);
      print('HA OCURRIDO UN ERROR');
      return 0;
    }
  }
}

List<TaskModel> parseToTasks(data) {
  List<TaskModel> aux = [];

  /* for (final item in data) {
    aux.add(TaskModel.fromJson(item));
  } */

  return aux;
}
