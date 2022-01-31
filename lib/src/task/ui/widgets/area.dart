import 'package:cloker_app/bloc/app_bloc.dart';
import 'package:cloker_app/src/task/ui/widgets/task.dart';
import 'package:cloker_app/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Area extends StatefulWidget {
  String area;
  Area(this.area);
  @override
  State<Area> createState() => _Area(this.area);
}

class _Area extends State<Area> {
  late bool status;
  String area;
  _Area(this.area);
  void initState() {
    status = false;
  }

  void onPressed() {
    setState(() {
      status = !status;
    });
  }

  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    Task displayTask = Task(
        progress: "1",
        title: "Defeat memo",
        goal: "1",
        description: "Pelea a muerte con memo",
        term: "En 15 min",
        deadline: "Quedan 5 dias 2 horas y 45 minutos",
        progressStatus: 1);

    return Column(
      children: [
        Container(
            alignment: Alignment.centerRight,
            height: height * 0.07141,
            width: width * 1,
            color: Color(0xFF606060),
            child: Row(
              children: [
                Container(
                  height: height * 0.06,
                  width: width * 0.4,
                  margin: EdgeInsets.only(left: width * 0.25),
                  child: Center(
                    child: Text(
                      area,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.02,
                          letterSpacing: 1.5,
                          fontFamily: "Roboto"),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: width * 0.1),
                  height: height * 0.06,
                  width: height * 0.06,
                  color: Color(0xFF606060),
                  child: GenericButton(
                    textOrIcon: false,
                    icon: Icons.keyboard_arrow_down_rounded,
                    onPressed: () => onPressed(),
                    context: context,
                    height: height * 0.06,
                    width: width * 0.06,
                    topMargin: 0,
                    leftMargin: 0,
                    rightMargin: 0,
                    bottomMargin: 0,
                    circularRadius: 0,
                    firstColor: Color(0xFF606060),
                    secondColor: Color(0xFF606060),
                    shadow: false,
                  ),
                ),
              ],
            )),
        status ? displayTask : Container(),
      ],
    );
  }
}
