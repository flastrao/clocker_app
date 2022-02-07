import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/src/user/model/user_model.dart';
import 'package:clocker_app/src/user/ui/screens/forgot/forgot_screen_email.dart';
import 'package:clocker_app/src/user/ui/screens/main_screens/nav_controler.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late UserModel userModel;

  late bool passObscure;
  late IconData eye;
  String tokenUser = "";
  String userId = "";

  @override
  void initState() {
    super.initState();
    passObscure = true;
    eye = FontAwesomeIcons.solidEye;
  }

  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    Size size = MediaQuery.of(context).size;
    _appBloc.setWidthAndHeight(size.width, size.height);

    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    /* Future<void> comprobation() async {
      if (emailController.text == '') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Correo no ingresado',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            backgroundColor: Colors.yellow,
            duration: Duration(milliseconds: 1500),
          ),
        );
      }
      if (passwordController.text == '') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Contraseña no ingresada',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            backgroundColor: Colors.yellow,
            duration: Duration(milliseconds: 1500),
          ),
        );
      }
      if (emailController.text != '' && passwordController.text != '') {
        userModel = await userRepository.postLogin(
            emailController.text, passwordController.text);
        userModel = await _appBloc.userAuth();
        if (userModel.name == '') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Ingreso Fallido!'),
              backgroundColor: Colors.red,
              duration: Duration(milliseconds: 1500),
            ),
          );
        }
        if (userModel.name != '') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content:
                  Text('Ingreso Exitoso!, Redireccionado a menú principal...'),
              backgroundColor: Colors.green,
              duration: Duration(milliseconds: 1500),
            ),
          );
          String token;

          print("push token");

          tokenUser = userModel.token ?? "";
          userId = userModel.id ?? "";
          token = await FirebaseMessaging.instance.getToken() ?? "";

          print(token);

          int status =
              await userRepository.patchTokens(token, tokenUser, userId);
          _appBloc.setTokenDevice(token);

          print(status);

          if (status == 200) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  'Nuevo dispositivo en sesion!',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.green,
                duration: Duration(milliseconds: 2000),
              ),
            );
          }
          Navigator.pushAndRemoveUntil<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => NavControlerScreen(
                context: context,
              ),
            ),
            (route) => false,
          );
        }
      }
    } */

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: <Widget>[
            Container(
              width: width,
              height: height * 0.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.grey, Colors.black],
                  begin: FractionalOffset(0.7, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(width * 0.2),
                child: const Image(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    "assets/images/bubble.png",
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.45),
              //height: height * 0.55,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: height * 0.03),
                    height: height * 0.3,
                    child: credenciales(context, height, width),
                  ),
                  Container(
                    width: width * 0.5,
                    height: height * 0.04,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavControlerScreen(
                              context: context,
                            ),
                          ),
                        );
                      },
                      child: const Text('Iniciar sesión'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget credenciales(BuildContext context, double height, double width) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            "Inicia Sesión",
            style: TextStyle(
              color: Colors.black,
              fontSize: height * 0.05,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: height * 0.01),
          height: height * 0.06,
          width: width * 0.8,
          child: Form(
            child: TextFormField(
              controller: emailController,
              style: const TextStyle(
                fontFamily: 'Roboto',
                color: Colors.black87,
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
              maxLines: 1,
              decoration: InputDecoration(
                hintStyle: const TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black45,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
                hintText: 'Correo electrónico',
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
          margin: EdgeInsets.symmetric(vertical: height * 0.01),
          height: height * 0.06,
          width: width * 0.8,
          child: Form(
            child: TextFormField(
              controller: passwordController,
              style: const TextStyle(
                fontFamily: 'Roboto',
                color: Colors.black87,
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
              obscureText: passObscure,
              maxLines: 1,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      passObscure = !passObscure;
                      if (passObscure) {
                        eye = FontAwesomeIcons.solidEye;
                      } else {
                        eye = FontAwesomeIcons.solidEyeSlash;
                      }
                      print("obscure");
                    });
                  },
                  icon: Icon(
                    (eye),
                    color: Colors.black,
                  ),
                ),
                hintStyle: const TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black45,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
                hintText: 'Contraseña',
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  gapPadding: 5,
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: height * 0.01,
                right: width * 0.03,
              ),
              child: InkWell(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotScreenEmail(
                        context: context,
                      ),
                    ),
                  ),
                },
                child: Container(
                  width: width * 0.5,
                  child: Text(
                    "Olvidé mi contraseña",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: height * 0.022,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
