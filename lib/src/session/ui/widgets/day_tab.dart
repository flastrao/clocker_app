import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class DayTab extends StatefulWidget {
  DayTab({Key? key}) : super(key: key);

  @override
  State<DayTab> createState() => _DayTab();
}

class _DayTab extends State<DayTab> {
  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: height * 0),
          child: Row(
            children: [
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.chevron_left,
                    size: 35,
                    color: Colors.black,
                  )),
              Container(
                margin: EdgeInsets.only(left: width * 0.32),
                child: Text(
                  "Enero 10",
                  style: TextStyle(color: Colors.grey[800], fontSize: 16),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: width * 0.29),
                child: IconButton(
                    onPressed: null, icon: Icon(Icons.chevron_right, size: 35)),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: height * 0.02),
          alignment: Alignment.center,
          height: height * 0.4,
          width: width * 0.9,
          color: Colors.cyan[100],
          child: Text("Acá iria mi grafica, si tan solo tuviera una!"),
        ),
        Container(
          margin: EdgeInsets.only(top: height * 0.01),
          alignment: Alignment.center,
          width: width * 0.93,
          height: height * 0.05,
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color(0xFF757575), width: 2))),
          child: Text(
            "Tiempo total de X horas en X sesiones",
            style: TextStyle(color: Colors.grey[600], fontSize: 16),
          ),
        ),
      ],
    );
  }
}
