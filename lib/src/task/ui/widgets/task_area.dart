import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/src/help/ui/widgets/doubts.dart';
import 'package:clocker_app/src/task/ui/widgets/task.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class TaskArea extends StatefulWidget {
  TaskArea({Key? key}) : super(key: key);

  @override
  State<TaskArea> createState() => _DoubtArea();
}

class _DoubtArea extends State<TaskArea> {
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
            children: <Widget>[displayTask, displayTask],
          ),
          ExpansionTile(
            title: Center(child: const Text("MOBILE")),
            collapsedBackgroundColor: Color(0xFF606060),
            backgroundColor: Color(0xFF606060),
            collapsedTextColor: Colors.white,
            collapsedIconColor: Colors.white,
            children: <Widget>[displayTask],
          ),
          ExpansionTile(
            title: Center(child: const Text("WEB")),
            collapsedBackgroundColor: Color(0xFF606060),
            backgroundColor: Color(0xFF606060),
            collapsedTextColor: Colors.white,
            collapsedIconColor: Colors.white,
            children: <Widget>[displayTask],
          ),
        ],
      ),
    );
  }
}
