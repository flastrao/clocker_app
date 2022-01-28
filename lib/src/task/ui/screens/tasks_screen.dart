import 'package:cloker_app/src/task/ui/widgets/tab_bar_task.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[TabSelecterTask()],
      ),
    );
  }
}
