import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class HistoricTab extends StatefulWidget {
  HistoricTab({Key? key}) : super(key: key);

  @override
  State<HistoricTab> createState() => _HistoricTabState();
}

class _HistoricTabState extends State<HistoricTab> {
  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: height * 0.02),
          child: const Text(
            "No hay dudas históricas.",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: height * 0.01),
          width: width * 0.9,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mic_none_sharp,
                  color: Colors.black,
                ),
              ),
              border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal)),
              contentPadding: EdgeInsets.all(15.0),
              hintText: 'Buscar',
            ),
            onChanged: (string) {},
          ),
        ),
      ],
    );
  }
}
