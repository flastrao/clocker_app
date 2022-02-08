import 'dart:async';
import 'dart:convert';
import 'package:clocker_app/provider/generic_provider.dart';
import 'package:clocker_app/src/session/model/session_model.dart';
import 'package:dio/dio.dart';

class DoubtProvider {
  final String _stagging_url = GenericProvider().getStaginURL();

  Future<List<SessionModel>> getSessions(String token) async {
    try {
      Response response = await Dio().get(
        '$_stagging_url/task/all', //CAMBIAR POR URL DE CLOCKER
        options: Options(
          headers: {
            //'Authorization': '$token',
          },
        ),
      );
      var aux = response.data['message'];

      //print(aux);
      return parseToSession(aux);
    } catch (e) {
      print(e);
      print('HA OCURRIDO UN ERROR');
      return [];
    }
  }
}

List<SessionModel> parseToSession(data) {
  List<SessionModel> aux = [];

  /* for (final item in data) {
    aux.add(SessionModel.fromJson(item));
  } */

  return aux;
}
