import 'package:cloker_app/bloc/app_bloc.dart';
import 'package:cloker_app/src/help/ui/screens/doubts_screen.dart';
import 'package:cloker_app/src/session/ui/screens/session_screen.dart';
import 'package:cloker_app/src/task/ui/screens/tasks_screen.dart';
import 'package:cloker_app/src/team/ui/screens/team_screen.dart';
import 'package:cloker_app/src/user/ui/widgets/whatis_screen.dart';
import 'package:cloker_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class NavControlerScreen extends StatefulWidget {
  NavControlerScreen({Key? key}) : super(key: key);

  @override
  State<NavControlerScreen> createState() => _NavControlerScreenState();
}

class _NavControlerScreenState extends State<NavControlerScreen> {
  @override
  List<Widget> screens = [
    TasksScreen(),
    SessionScreen(),
    TeamScreen(),
    DoubtScreen()
  ];

  List<Widget> appbars = [
    Row(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Tareas",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    ]),
    Row(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.centerLeft,
        child: const Text(
          "Sesiones",
          style: TextStyle(
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ),
    ]),
    Row(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.centerLeft,
        child: const Text(
          "Equipo",
          style: TextStyle(
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ),
    ]),
    Row(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.centerLeft,
        child: const Text(
          "Dudas",
          style: TextStyle(
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ),
    ]),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    Size size = MediaQuery.of(context).size;
    _appBloc.setWidthAndHeight(size.width, size.height);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: appbars.elementAt(_selectedIndex),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.help),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) =>
                    WhatisScreen(index: _selectedIndex),
              );
            },
          )
        ],
      ),
      drawer: ClockerDrawer(),
      body: screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Tareas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            label: 'Sesiones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Equipo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: 'Dudas',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
