import 'package:cloker_app/bloc/app_bloc.dart';
import 'package:cloker_app/src/help/ui/screens/doubts_screen.dart';
import 'package:cloker_app/src/session/ui/screens/session_screen.dart';
import 'package:cloker_app/src/task/ui/screens/tasks_screen.dart';
import 'package:cloker_app/src/team/ui/screens/team_screen.dart';
import 'package:cloker_app/src/user/ui/screens/main_screens/help_screen.dart';
import 'package:cloker_app/src/user/ui/widgets/profile_drawer.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ClockerDrawer extends StatefulWidget {
  const ClockerDrawer({Key? key}) : super(key: key);

  @override
  State<ClockerDrawer> createState() => _ClockerDrawerState();
}

class _ClockerDrawerState extends State<ClockerDrawer> {
  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    const inSnackBar = SnackBar(
      content: Text('!Has marcado In!'),
    );

    const outSnackBar = SnackBar(
      content: Text('!Has marcado Out!'),
    );

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: height * 0.32,
            child: const DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey),
              child: UserProfileDrawer(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(inSnackBar);
                  },
                  child: const Text('In'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(outSnackBar);
                  },
                  child: const Text('Out'),
                ),
              )
            ],
          ),
          listTileDrawer(
            height,
            width,
            "Tareas",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TasksScreen(),
                ),
              );
            },
            Icons.library_books,
          ),
          listTileDrawer(
            height,
            width,
            "Sesiones",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SessionScreen(),
                ),
              );
            },
            Icons.computer,
          ),
          listTileDrawer(
            height,
            width,
            "Equipo",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TeamScreen(),
                ),
              );
            },
            Icons.people,
          ),
          listTileDrawer(
            height,
            width,
            "Dudas",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoubtScreen(),
                ),
              );
            },
            Icons.question_answer,
          ),
          listTileDrawer(
            height,
            width,
            "Ayuda",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FAQScreen(),
                ),
              );
            },
            Icons.help,
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.1),
            child: listTileDrawer(
              height,
              width,
              "Cerrar sesion",
              () {},
              Icons.logout,
            ),
          ),
        ],
      ),
    );
  }
}

Widget listTileDrawer(
  double height,
  double width,
  String title,
  Function onTap,
  IconData iconName,
) {
  return Column(
    children: <Widget>[
      ListTile(
        title: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: width * 0.03),
              child: Icon(
                iconName,
                color: Colors.black,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: height * 0.022,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        onTap: () {
          onTap();
        },
      ),
    ],
  );
}
