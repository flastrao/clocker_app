import 'package:cloker_app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class actions extends StatelessWidget {
  bool status;
  bool completed;

  actions(this.status, this.completed);
  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();
    return ((status == true)
        ? Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              margin: EdgeInsets.only(top: height * 0.006),
              width: width * 0.22,
              height: height * 0.04,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.pause,
                    size: width * 0.06,
                    color: Colors.black,
                  ),
                  Text("PAUSA",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.008, top: height * 0.006),
              width: width * 0.4,
              height: height * 0.04,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_box_rounded,
                    size: width * 0.06,
                    color: completed ? Colors.black : Colors.grey,
                  ),
                  Text(" FINALIZAR TAREA",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: completed ? Colors.black : Colors.grey))
                ],
              ),
            ),
          ])
        : Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(top: height * 0.006),
                width: width * 0.34,
                height: height * 0.04,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.handyman,
                      size: width * 0.06,
                      color: Colors.black,
                    ),
                    Text(" INICIAR TAREA",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ],
          ));
  }
}
