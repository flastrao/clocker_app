import 'dart:async';
import 'dart:ui';

import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/src/user/ui/screens/login_screen.dart';
import 'package:clocker_app/src/user/ui/screens/main_screens/nav_controler.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

// ignore: must_be_immutable
class FirstScreen extends StatefulWidget {
  bool first;
  FirstScreen({Key? key, this.first = false}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => widget.first
              ? NavControlerScreen(
                  context: context,
                )
              : LoginScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    Size size = MediaQuery.of(context).size;
    _appBloc.setWidthAndHeight(size.width, size.height);

    // ignore: unused_local_variable
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.grey, Colors.black],
          begin: FractionalOffset(0.7, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(top: width * 0.09),
              width: width * 0.6,
              height: height * 0.3,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/bubble.png",
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: height * 0.03),
            child: Text(
              "2022© Clocker App",
              style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.02,
              ),
            ),
          )
        ],
      ),
    );
  }
}
