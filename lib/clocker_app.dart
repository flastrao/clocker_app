import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/src/task/ui/screens/tasks_screen.dart';
import 'package:clocker_app/src/user/ui/screens/main_screens/nav_controler.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'bloc/app_bloc.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppBloc>(
      child: _materialApp(),
      bloc: AppBloc(),
    );
  }

  MaterialApp _materialApp() {
    return MaterialApp(
      title: 'Clocker App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      home: NavControlerScreen(),
    );
  }
}
