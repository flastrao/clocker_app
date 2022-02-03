import 'package:cloker_app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class taskWindow extends StatefulWidget {
  const taskWindow({Key? key}) : super(key: key);

  @override
  State<taskWindow> createState() => _taskWindow();
}

class _taskWindow extends State<taskWindow> {
  TextEditingController taskTitle = TextEditingController();
  TextEditingController taskDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        leading: const BackButton(),
        title: const Text(
          "Agregar duda",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /* aca vienen los puros containers con text() */
          Text(
            "\n\n    Titulo de la tarea",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.05),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            height: height * 0.08,
            width: width * 0.9,
            child: Text(
              "  Agrega un titulo a la tarea",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          Text(
            "\n     Descripción",
            style: TextStyle(color: Colors.grey[800], fontSize: 16),
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.05, top: height * 0.003),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            height: height * 0.1,
            width: width * 0.9,
            child: Text(
              "  Incluye una pequeña descripción de la \n  tarea...",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.04, top: height * 0.01),
            child: Row(
              children: [
                Icon(Icons.location_on),
                Text(
                  "Marcar departamento",
                  style: TextStyle(color: Colors.grey[800], fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.05),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            height: height * 0.08,
            width: width * 0.9,
            child: Row(
              children: [
                Text(
                  "  Selecciona una ubicación o más",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Container(
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    size: width * 0.08,
                  ),
                  margin: EdgeInsets.only(left: width * 0.2),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.05, top: height * 0.01),
            child: Row(
              children: [
                Icon(Icons.person_add_alt),
                Text(
                  " Asignar personal",
                  style: TextStyle(color: Colors.grey[800], fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.05),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            height: height * 0.08,
            width: width * 0.9,
            child: Row(
              children: [
                Text(
                  "  Selecciona uno o más participantes",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Container(
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    size: width * 0.08,
                  ),
                  margin: EdgeInsets.only(left: width * 0.135),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.05, top: height * 0.01),
            child: Row(
              children: [
                Icon(Icons.warning),
                Text(
                  " Prioridad",
                  style: TextStyle(color: Colors.grey[800], fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.05),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            height: height * 0.08,
            width: width * 0.9,
            child: Row(
              children: [
                Text(
                  "  Selecciona una opción",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Container(
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    size: width * 0.08,
                  ),
                  margin: EdgeInsets.only(left: width * 0.37),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
