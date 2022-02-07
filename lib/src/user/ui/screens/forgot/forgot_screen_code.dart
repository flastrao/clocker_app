import 'package:auto_size_text/auto_size_text.dart';
import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/src/user/model/user_model.dart';
import 'package:clocker_app/src/user/ui/screens/forgot/forgot_screen_password.dart';
import 'package:clocker_app/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

// ignore: must_be_immutable
class ForgotScreenCode extends StatefulWidget {
  final String email;
  final BuildContext context;
  final AppBloc _appBloc;
  ForgotScreenCode({
    Key? key,
    required this.email,
    required this.context,
  })  : _appBloc = BlocProvider.of<AppBloc>(context),
        super(key: key);

  @override
  _ForgotScreenCodeState createState() => _ForgotScreenCodeState();
}

class _ForgotScreenCodeState extends State<ForgotScreenCode> {
  TextEditingController codeController = TextEditingController();

  //UserRepository userRepository = UserRepository();
  late UserModel userModel;
  late double width;
  late double height;

  /* Future<String> verifyCode(String code, String email) async {
    return await userRepository.verifyCode(email, code);
  } */

  Future<void> verifyContent() async {
    if (codeController.text == '') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'codigo no ingresado',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black45,
          duration: Duration(milliseconds: 1500),
        ),
      );
    } /* else {
      var post = await verifyCode(codeController.text, widget.email);

      if (post != "") {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ForgotScreenPassword(
              idUser: post,
              context: context,
            ),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Usuario no encontrado',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.black45,
            duration: Duration(milliseconds: 1500),
          ),
        );
      }
    } */
  }

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
        title: const Text("Recuperar contraseña"),
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
                          'Ingresa el código de verficiación que acabamos de enviar a tu dirección de correo',
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
                      'Codigo enviado',
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
                        controller: codeController,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.black45,
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                        ),
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black45,
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                          ),
                          hintText: 'Ingrese su codigo',
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            gapPadding: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GenericButton(
                    textOrIcon: true,
                    buttonText: "Enviar",
                    circularRadius: 10,
                    firstColor: const Color(0xFFFFA960),
                    secondColor: const Color(0xFFFFA960),
                    width: width * 0.8,
                    height: height * 0.05,
                    onPressed: verifyContent,
                    textSize: 25,
                    beginFracFirst: 0.5,
                    context: context,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height * 0.02),
                    alignment: Alignment.center,
                    width: width * 0.9,
                    child:
                        const Text("¿no recibiste el codigo de verificación?"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: width * 0.9,
                    margin: EdgeInsets.symmetric(vertical: height * 0.01),
                    child: InkWell(
                      child: Text(
                        "Reenviar",
                        style: TextStyle(
                          color: const Color(0xFFFFA960),
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {},
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
