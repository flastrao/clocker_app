import 'package:cloker_app/bloc/app_bloc.dart';
import 'package:cloker_app/src/help/ui/widgets/doubt_area.dart';
import 'package:cloker_app/src/help/ui/widgets/doubts.dart';
import 'package:cloker_app/src/task/ui/widgets/task_area.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class GeneralTab extends StatefulWidget {
  GeneralTab({Key? key}) : super(key: key);

  @override
  State<GeneralTab> createState() => _GeneralTabState();
}

class _GeneralTabState extends State<GeneralTab> {
  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ExpansionTile(
            title: Center(child: const Text("BACKEND")),
            collapsedBackgroundColor: Color(0xFF606060),
            backgroundColor: Color(0xFF606060),
            collapsedTextColor: Colors.white,
            collapsedIconColor: Colors.white,
            children: <Widget>[
              Doubt(
                doubtTitle: "How to defeat memo?",
                doubtDescription:
                    "Cuantos puños hay que meterle a memo para derrotarlo??",
              ),
              Doubt(
                doubtTitle: "How to defeat memo?",
                doubtDescription:
                    "Cuantos puños hay que meterle a memo para derrotarlo??",
              )
            ],
          ),
          ExpansionTile(
            title: Center(child: const Text("MOBILE")),
            collapsedBackgroundColor: Color(0xFF606060),
            backgroundColor: Color(0xFF606060),
            collapsedTextColor: Colors.white,
            collapsedIconColor: Colors.white,
            children: <Widget>[
              Doubt(
                  doubtTitle: "How to defeat memo?",
                  doubtDescription:
                      "Cuantos puños hay que meterle a memo para derrotarlo??")
            ],
          ),
          ExpansionTile(
            title: Center(child: const Text("WEB")),
            collapsedBackgroundColor: Color(0xFF606060),
            backgroundColor: Color(0xFF606060),
            collapsedTextColor: Colors.white,
            collapsedIconColor: Colors.white,
            children: <Widget>[
              Doubt(
                  doubtTitle: "How to defeat memo?",
                  doubtDescription:
                      "Cuantos puños hay que meterle a memo para derrotarlo??")
            ],
          ),
        ],
      ),
    );
  }
}
