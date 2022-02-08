/* import 'dart:convert';
import 'package:clocker_app/src/user/model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:clocker_app/provider/generic_provider.dart';

class UserProvider {
  final String _stagging_url = GenericProvider().getStaginURL();

  Future<int> patchTokens(
    String tokenDevice,
    String tokenUser,
    String userId,
  ) async {
    try {
      var data = {"token": tokenDevice};

      Response response = await Dio().patch(
        '$_stagging_url/user/$userId/device/registration',
        data: jsonEncode(data),
        options: Options(
          followRedirects: false,
          headers: {
            "Content-Type": "application/json",
            "Authorization": tokenUser,
          },
        ),
      );
      return response.statusCode ?? 0;
    } catch (e) {
      print(e);
      print('HA OCURRIDO UN ERROR 1');
      return 0;
    }
  }

  Future<UserModel> getUser(String idUser, String token) async {
    print('getUser');
    try {
      Response response = await Dio().get(
        '$_stagging_url/user/$idUser',
        options: Options(
          headers: {
            'Authorization': token,
          },
        ),
      );
      var aux = response.data;
      return parseToUserModel(aux);
    } catch (e) {
      print(e);
      print('HA OCURRIDO UN ERROR');
      return UserModel(
        name: '',
        email: '',
        password: '',
      );
    }
  }

  Future<UserModel> postLogin(String email, String password) async {
    var _auth = {"email": email, "password": password};
    print('_auth');
    print(_auth);
    try {
      print(_stagging_url);
      Response response = await Dio().post(
        '$_stagging_url/auth/login',
        options: Options(headers: {
          "Content-Type": "application/json",
        }),
        data: jsonEncode(_auth),
      );

      var aux = response.data['message'];
      print(aux);

      UserModel userModel = parseToUserModel(aux);
      //AuthBloc().sinkEvent(LogInEvent(userModel));////////////
      return userModel;
    } catch (e) {
      print(e);
      print('HA OCURRIDO UN ERROR');
      return UserModel(
        name: '',
        email: '',
        password: '',
      );
    }
  }

  Future<bool> postLogout(String idUser) async {
    try {
      Response response = await Dio().post(
        _stagging_url,
        options: Options(headers: {
          "Content-Type": "application/json",
        }),
        data: jsonEncode(
          UserModel(
            id: idUser,
            email: '',
            name: '',
            password: '',
          ),
        ),
      );
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<int> postUser(UserModel userModel) async {
    var _user = {
      "name": userModel.name,
      "email": userModel.email,
      "password": userModel.password,
    };

    var aux;

    try {
      Response response = await Dio().post(
        '/register',
        options: Options(headers: {
          "Content-Type": "application/json",
        }),
        data: jsonEncode(_user),
      );

      aux = response.statusCode;
    } catch (e) {
      print(e);
      print('HA OCURRIDO UN ERROR');
      aux = 500;
    }
    return aux;
  }

  Future<int> changeUserInfo(
    String token,
    String userId,
    String name,
    String email,
    String phone,
    String address,
  ) async {
    print(token);
    print(userId);

    try {
      var data = {
        "name": name,
        "email": email,
        "address": address,
        "phone": phone,
      };

      Response response = await Dio().patch(
        '$_stagging_url/user/$userId',
        data: jsonEncode(data),
        options: Options(
          followRedirects: false,
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );

      return response.statusCode ?? 0;
    } catch (e) {
      print(e);
      print('HA OCURRIDO UN ERROR');
      return 0;
    }
  }

  Future<bool> changePassword(
    String token,
    String userId,
    String password,
    String newPassword,
  ) async {
    print(token);
    print(userId);

    try {
      var data = {
        "password": password,
        "newPassword": newPassword,
      };

      Response response = await Dio().patch(
        '$_stagging_url/user/$userId/new-password',
        data: jsonEncode(data),
        options: Options(
          followRedirects: false,
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );

      return response.data['message'];
    } catch (e) {
      print(e);
      print('HA OCURRIDO UN ERROR');
      return false;
    }
  }

  Future<bool> postEmail(String emailuser) async {
    try {
      Response response = await Dio().post(
        '$_stagging_url/user/send-code',
        options: Options(headers: {
          "Content-Type": "application/json",
        }),
        data: jsonEncode({
          "email": emailuser,
        }),
      );

      return response.data['message'];
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<String> verifyCode(String email, String code) async {
    try {
      Response response = await Dio().get(
        '$_stagging_url/user/verificate-code/$email/$code',
        options: Options(headers: {
          "Content-Type": "application/json",
        }),
      );

      return response.data['message'];
    } catch (e) {
      print(e);
      return "";
    }
  }

  Future<bool> changePasswordcode(String idUser, String password) async {
    print(idUser + ":" + password);
    try {
      Response response = await Dio().patch(
        '$_stagging_url/user/$idUser/change-password',
        data: jsonEncode(
          {
            "password": password,
          },
        ),
        options: Options(
          followRedirects: false,
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );

      return response.data['message'];
    } catch (e) {
      print(e);
      return true;
    }
  }
}

 UserModel parseToUserModel(userAux) {
  UserModel userModel = UserModel.fromJson(userAux);
  return userModel;
}  */
