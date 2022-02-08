import 'package:clocker_app/src/session/ui/widgets/tab_bar_session.dart';
import 'package:flutter/material.dart';

class SessionScreen extends StatefulWidget {
  SessionScreen({Key? key}) : super(key: key);

  @override
  State<SessionScreen> createState() => _SessionScreenState();
}

class _SessionScreenState extends State<SessionScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[TabSelecterSession()],
      ),
    );
  }
}
