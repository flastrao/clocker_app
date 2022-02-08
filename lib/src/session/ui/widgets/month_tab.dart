import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class MonthTab extends StatefulWidget {
  MonthTab({Key? key}) : super(key: key);

  @override
  State<MonthTab> createState() => _MonthTab();
}

class _MonthTab extends State<MonthTab> {
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
            "No hay tareas finalizadas.",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
    );
  }
}
