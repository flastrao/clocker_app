import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          "FAQ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: width * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: height * 0.02),
                child: Text(
                  "¿Cómo usar Clocker?",
                  style: TextStyle(
                    fontSize: height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.02),
                child: Text(
                  "Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO textoTexto TEXTO texto Texto TEXTO texto Texto TEXTO texto ",
                  style: TextStyle(
                    fontSize: height * 0.02,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.035),
                child: Text(
                  "¿Qué son las reacciones?",
                  style: TextStyle(
                    fontSize: height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.02),
                child: Text(
                  "Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO textoTexto TEXTO texto Texto TEXTO texto Texto TEXTO texto ",
                  style: TextStyle(
                    fontSize: height * 0.02,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.035),
                child: Text(
                  "¿Qué son las reacciones?",
                  style: TextStyle(
                    fontSize: height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.02),
                child: Text(
                  "Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO textoTexto TEXTO texto Texto TEXTO texto Texto TEXTO texto ",
                  style: TextStyle(
                    fontSize: height * 0.02,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.035),
                child: Text(
                  "¿Qué son las reacciones?",
                  style: TextStyle(
                    fontSize: height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.02),
                child: Text(
                  "Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO textoTexto TEXTO texto Texto TEXTO texto Texto TEXTO texto ",
                  style: TextStyle(
                    fontSize: height * 0.02,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.035),
                child: Text(
                  "¿Qué son las reacciones?",
                  style: TextStyle(
                    fontSize: height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: height * 0.02, bottom: height * 0.02),
                child: Text(
                  "Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO texto Texto TEXTO textoTexto TEXTO texto Texto TEXTO texto Texto TEXTO texto ",
                  style: TextStyle(
                    fontSize: height * 0.02,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
