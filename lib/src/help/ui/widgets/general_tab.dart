import 'package:cloker_app/bloc/app_bloc.dart';
import 'package:cloker_app/src/help/ui/widgets/doubts.dart';
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
          Doubt(
              doubtTitle: "How to defeat memo?",
              doubtDescription:
                  "Cuantos puños hay que meterle a memo para derrotarlo?"),
          Doubt(
              doubtTitle: "How to defeat memo?",
              doubtDescription:
                  "Cuantos puños hay que meterle a memo para derrotarlo?"),
        ],
      ),
    );
  }
}
