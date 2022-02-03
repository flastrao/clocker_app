import 'package:cloker_app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class NewDoubt extends StatefulWidget {
  NewDoubt({Key? key}) : super(key: key);

  @override
  State<NewDoubt> createState() => _NewDoubtState();
}

class _NewDoubtState extends State<NewDoubt> {
  String dropdownValue = 'Selecciona un area';
  final items = ['Backend', 'Mobile', 'Web', 'Clocker'];
  String? value;

  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    const addedSnackBar = SnackBar(
      content: Text('!Duda agregada!'),
    );

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
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: height * 0.03,
              left: width * 0.04,
            ),
            child: const Text(
              "Titulo de la duda",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: height * 0.02,
              left: width * 0.04,
            ),
            width: width * 0.9,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Agrega un titulo a la duda',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: height * 0.02,
              left: width * 0.04,
            ),
            child: const Text(
              "Descripción",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: height * 0.02,
              left: width * 0.04,
            ),
            width: width * 0.9,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Incluye una pequeña descripción de la duda...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: height * 0.02,
                  left: width * 0.04,
                ),
                child: Icon(Icons.location_on_rounded),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: height * 0.02,
                  left: width * 0.01,
                ),
                child: const Text(
                  "Marcar departamento",
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
              left: width * 0.04,
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 3.0),
            width: width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(color: Colors.grey, width: 1.0)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: value,
                isExpanded: true,
                iconSize: 36,
                hint: const Text("Selecciona un departamento"),
                items: items.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() => this.value = value),
              ),
            ),
          ),
          Center(
            child: Container(
              width: width * 0.8,
              margin: EdgeInsets.only(top: height * 0.02),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(addedSnackBar);
                },
                child: const Text('Agregar duda'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
      ),
    );
