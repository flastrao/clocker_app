import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class DoubtDetail extends StatefulWidget {
  const DoubtDetail({Key? key}) : super(key: key);

  @override
  State<DoubtDetail> createState() => _DoubtDetailState();
}

class _DoubtDetailState extends State<DoubtDetail> {
  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.check),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        leading: const BackButton(),
        title: const Text(
          "Duda",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.05,
          vertical: width * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "11 de enero del 2022, por Nombre Apellido",
              style: TextStyle(
                color: Colors.grey[700],
                fontStyle: FontStyle.italic,
                fontSize: 12.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.007),
              child: const Text(
                "Titulo de la duda",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.01),
              child: Text(
                "Descripción",
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.01),
              child: const Text(
                "Respecto a la sección de comunidad en la que se encuentra el mapa y el contador de usuarios conectados, ¿Lo tomamos en cuenta o eso no se profundiza aún?",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.012),
              child: Divider(
                color: Colors.grey[500],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.012),
              child: Text(
                "Comentarios",
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.01),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: width * 0.02),
                    child: CircleAvatar(
                      backgroundImage: const NetworkImage(
                          "https://i.pinimg.com/originals/e5/4a/cb/e54acb68f463cc6c8f249091c7ce7372.jpg"),
                      radius: width * 0.05,
                    ),
                  ),
                  const Text(
                    "Nombre Apellido",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width * 0.24),
                    child: const Text(
                      "31/01/2022",
                      style: TextStyle(fontSize: 16.0, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.01),
              child: const Text(
                "Respecto a la sección de comunidad en la que se encuentra el mapa y el contador de usuarios conectados, ¿Lo tomamos en cuenta o eso no se profundiza aún?",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.012),
              child: Divider(
                color: Colors.grey[500],
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    top: height * 0.012,
                  ),
                  child: const Icon(
                    Icons.edit,
                    size: 20,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: height * 0.012,
                    left: width * 0.01,
                  ),
                  child: const Text(
                    "Agregar un comentario",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: height * 0.02,
              ),
              width: width * 0.9,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Agrega un comentario...',
                  border: OutlineInputBorder(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
