import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/src/help/ui/widgets/doubts.dart';
import 'package:clocker_app/src/task/ui/widgets/task.dart';
import 'package:clocker_app/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class DoubtArea extends StatefulWidget {
  String area;
  DoubtArea(this.area);
  @override
  State<DoubtArea> createState() => _DoubtArea(this.area);
}

class _DoubtArea extends State<DoubtArea> {
  late bool status;
  String area;
  _DoubtArea(this.area);

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

    Doubt displayDoubt = Doubt(
      doubtTitle: "How to defeat memo?",
      doubtDescription:
          "Cuantos puños hay que meterle a memo para derrotarlo??",
    );

    return Column(
      children: [
        Container(
            alignment: Alignment.center,
            height: height * 0.07,
            width: width,
            color: const Color(0xFF606060),
            child: Row(
              children: [
                Container(
                  height: height * 0.07,
                  width: width * 0.4,
                  margin: EdgeInsets.only(left: width * 0.28),
                  child: Center(
                    child: Text(
                      area,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.02,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: width * 0.02),
                  height: height * 0.06,
                  width: height * 0.06,
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
        status ? displayDoubt : Container(),
      ],
    );
  }
}
