import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/src/team/ui/widgets/team_member.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ActiveTab extends StatefulWidget {
  ActiveTab({Key? key}) : super(key: key);

  @override
  State<ActiveTab> createState() => _ActiveTabState();
}

class _ActiveTabState extends State<ActiveTab> {
  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TeamMember(
              memberName: "Memo Pablo Contreras",
              department: "Clocker",
              lastSesionData: "Ultima sesión de 23 horas y 59 minutos"),
          TeamMember(
              memberName: "Memo Pablo Contreras",
              department: "Clocker",
              lastSesionData: "Ultima sesión de 23 horas y 59 minutos"),
        ],
      ),
    );
  }
}
