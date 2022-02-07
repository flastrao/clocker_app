import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/src/user/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ForgotScreenPassword extends StatefulWidget {
  final String idUser;
  final BuildContext context;
  final AppBloc _appBloc;
  ForgotScreenPassword({
    Key? key,
    required this.idUser,
    required this.context,
  })  : _appBloc = BlocProvider.of<AppBloc>(context),
        super(key: key);

  @override
  _ForgotScreenPasswordState createState() => _ForgotScreenPasswordState();
}

class _ForgotScreenPasswordState extends State<ForgotScreenPassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  late bool passObscure1;
  late bool passObscure2;
  late IconData eye1;
  late IconData eye2;
  late double width;
  late double height;
  //UserRepository userRepository = UserRepository();

  /* Future<bool> changePassword(String idUser, String password) async {
    return await userRepository.changePasswordcode(idUser, password);
  } */

  Future<void> confirmPassword() async {
    if (passwordController.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'La contraseña es requerida',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red,
          duration: Duration(milliseconds: 1500),
        ),
      );
    } else if (confirmController.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'La confirmacion de la contraseña es requerida',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red,
          duration: Duration(milliseconds: 1500),
        ),
      );
    } else if (passwordController.text != confirmController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Las Contraseñas no coinciden',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red,
          duration: Duration(milliseconds: 1500),
        ),
      );
    } /* else {
      var changed =
          await changePassword(widget.idUser, passwordController.text);
      if (changed) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
            (route) => false);
      }
    } */
  }

  @override
  void initState() {
    super.initState();
    passObscure1 = true;
    passObscure2 = true;
    eye1 = FontAwesomeIcons.solidEye;
    eye2 = FontAwesomeIcons.solidEye;
    width = widget._appBloc.getWidth();
    height = widget._appBloc.getHeight();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFA860),
        shadowColor: const Color(0xFFFFC75B),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: width * 0.12),
              child: const Text(
                "Cambiar contraseña",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: height * 0.1),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            form(
              width,
              height,
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.01),
              child: InkWell(
                onTap: confirmPassword,
                child: Container(
                  alignment: Alignment.center,
                  width: width * 0.85,
                  height: height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFFFA960),
                  ),
                  child: Text(
                    "Cambiar Contraseña",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.02,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget form(
    double width,
    double height,
  ) {
    return Column(
      children: <Widget>[
        Container(
          width: width * 0.8,
          margin: EdgeInsets.symmetric(vertical: height * 0.01),
          child: Text(
            "Establece una nueva contraseña para iniciar sesión en tu cuenta",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: height * 0.02,
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
                color: Colors.black45,
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
              maxLines: 1,
              obscureText: passObscure1,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      passObscure1 = !passObscure1;
                      if (passObscure1) {
                        eye1 = FontAwesomeIcons.solidEye;
                      } else {
                        eye1 = FontAwesomeIcons.solidEyeSlash;
                      }
                    });
                  },
                  icon: Icon(
                    (eye1),
                    color: const Color(0xFFFFA960),
                  ),
                ),
                hintStyle: const TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black45,
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                ),
                hintText: 'Nueva contraseña',
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
              controller: confirmController,
              style: const TextStyle(
                fontFamily: 'Roboto',
                color: Colors.black45,
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
              maxLines: 1,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      passObscure2 = !passObscure2;
                      if (passObscure2) {
                        eye2 = FontAwesomeIcons.solidEye;
                      } else {
                        eye2 = FontAwesomeIcons.solidEyeSlash;
                      }
                    });
                  },
                  icon: Icon(
                    (eye2),
                    color: Color(0xFFFFA960),
                  ),
                ),
                hintStyle: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black45,
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                ),
                hintText: 'Confirme contraseña',
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  gapPadding: 0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
