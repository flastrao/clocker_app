import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/src/task/ui/widgets/tab_bar_task.dart';
import 'package:clocker_app/src/team/ui/widgets/tab_bar_member.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class TeamScreen extends StatefulWidget {
  @override
  State<TeamScreen> createState() => _TeamScreen();
}

class _TeamScreen extends State<TeamScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[TabSelecterMember()],
      ),
    );
  }
}
