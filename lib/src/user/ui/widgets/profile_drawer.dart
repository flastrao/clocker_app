import 'package:cloker_app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class UserProfileDrawer extends StatelessWidget {
  const UserProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);

    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: width * 0.09),
                width: width * 0.2,
                height: width * 0.2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://somoskudasai.com/wp-content/uploads/2021/07/1-Madoka.jpg",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.settings,
                size: 14.0,
              ),
              Text(
                "Nombre Apellido",
                style: TextStyle(
                  fontSize: height * 0.025,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: height * 0.02,
                margin: EdgeInsets.only(top: width * 0.015),
                child: Text(
                  "Sesión actual de 4 horas y 55 minutos",
                  style: TextStyle(
                    fontSize: height * 0.015,
                    fontFamily: 'Roboto',
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
