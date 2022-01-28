import 'package:cloker_app/src/help/ui/widgets/tab_bar_doubts.dart';
import 'package:flutter/material.dart';

class DoubtScreen extends StatefulWidget {
  @override
  State<DoubtScreen> createState() => _DoubtScreenState();
}

class _DoubtScreenState extends State<DoubtScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[TabSelecterDoubt()],
      ),
    );
  }
}
