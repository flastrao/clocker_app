import 'package:auto_size_text/auto_size_text.dart';
import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/src/user/model/user_model.dart';
import 'package:clocker_app/src/user/ui/screens/forgot/forgot_screen_code.dart';
import 'package:clocker_app/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ForgotScreenEmail extends StatefulWidget {
  final BuildContext context;
  final AppBloc _appBloc;
  ForgotScreenEmail({
    Key? key,
    required this.context,
  })  : _appBloc = BlocProvider.of<AppBloc>(context),
        super(key: key);

  @override
  _ForgotScreenEmailState createState() => _ForgotScreenEmailState();
}

class _ForgotScreenEmailState extends State<ForgotScreenEmail> {
  TextEditingController emailController = TextEditingController();

  //UserRepository userRepository = UserRepository();
  late UserModel userModel;
  late double width;
  late double height;

  bool isEmail(String em) {
    RegExp regExp = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    return regExp.hasMatch(em);
  }

  /* Future<bool> postEmail(String email) async {
    //return true;
    return await userRepository.postEmail(email);
  } */

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    width = widget._appBloc.getWidth();
    height = widget._appBloc.getHeight();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Recuperar contraseña",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: height * 0.1),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: width * 0.9,
                        margin: EdgeInsets.symmetric(vertical: height * 0.03),
                        child: const AutoSizeText(
                          'Ingrese su correo electrónico, recibirá un código de seguridad para reestablecer su contraseña',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    alignment: Alignment.center, // ajuste de alineamiento acá
                    child: const AutoSizeText(
                      'Correo Electrónico',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: height * 0.03),
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Form(
                      child: TextFormField(
                        controller: emailController,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.black87,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black45,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                          hintText: 'Ingrese su correo electrónico',
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            gapPadding: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: width * 0.4,
                    height: height * 0.04,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () async {
                        if (emailController.text == '') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Correo no ingresado',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              duration: Duration(milliseconds: 1500),
                            ),
                          );
                        } else if (!isEmail(emailController.text)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'No es un correo valido',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              duration: Duration(milliseconds: 1500),
                            ),
                          );
                        } /* else {
                        var post = await postEmail(emailController.text);
                        //print("bool: " + post.toString());
                        if (post) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotScreenCode(
                                email: emailController.text,
                                context: context,
                              ),
                            ),
                          );
                        } else {
                          const SnackBar(
                            content: Text(
                              'Usuario no encontrado',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.black45,
                            duration: Duration(milliseconds: 1500),
                          );
                        }
                      } */
                      },
                      child: const Text('Enviar'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
