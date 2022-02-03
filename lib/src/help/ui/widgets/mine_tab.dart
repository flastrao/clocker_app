import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/src/help/ui/screens/new_doubt_screen.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class MineTab extends StatefulWidget {
  MineTab({Key? key}) : super(key: key);

  @override
  State<MineTab> createState() => _MineTabState();
}

class _MineTabState extends State<MineTab> {
  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NewDoubt()));
          },
          backgroundColor: Colors.black,
          child: const Icon(Icons.add)),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: width,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: height * 0.02),
              child: const Text(
                "No has iniciado dudas.",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
