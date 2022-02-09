import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/provider/generic_provider.dart';
import 'package:clocker_app/src/help/ui/widgets/doubts.dart';
import 'package:clocker_app/src/task/model/area_model.dart';
import 'package:clocker_app/src/task/ui/widgets/task.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class TaskArea extends StatefulWidget {
  TaskArea({Key? key}) : super(key: key);

  @override
  State<TaskArea> createState() => _DoubtArea();
}

class _DoubtArea extends State<TaskArea> {
  List<AreaModel> areas = [];
  GenericProvider provider = GenericProvider();

  @override
  void initState() {
    super.initState();
    areas = provider.getAreas();
  }

  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          for (var i = 0; i < areas.length; i++)
            ExpansionTile(
              title: Center(child: Text(areas[i].name)),
              collapsedBackgroundColor: Color(0xFF606060),
              backgroundColor: Color(0xFF606060),
              collapsedTextColor: Colors.white,
              collapsedIconColor: Colors.white,
              children: <Widget>[
                for (var j = 0; j < areas[i].tasklist.length; j++)
                  Container(
                    alignment: Alignment.center,
                    child: Task(
                      progress: areas[i].tasklist[j].status,
                      title: areas[i].tasklist[j].title,
                      goal: areas[i].tasklist[j].objectives,
                      description: areas[i].tasklist[j].description,
                      term: areas[i].tasklist[j].finishTime,
                      progressStatus: areas[i]
                          .tasklist[j]
                          .objectives
                          .where((element) => element.finish)
                          .length,
                      deadline: areas[i].tasklist[j].finishTime,
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
