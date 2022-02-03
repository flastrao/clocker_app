import 'package:cloker_app/bloc/app_bloc.dart';
import 'package:cloker_app/src/task/ui/widgets/create_task_window.dart';
import 'package:cloker_app/src/task/ui/widgets/task_area.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class PendingTab extends StatefulWidget {
  PendingTab({Key? key}) : super(key: key);

  @override
  State<PendingTab> createState() => _PendingTabState();
}

class _PendingTabState extends State<PendingTab> {
  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TaskWindow(),
                ));
          },
          backgroundColor: Colors.black,
          child: const Icon(Icons.add)),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TaskArea(),
          ],
        ),
      ),
    );
  }
}
