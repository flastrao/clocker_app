import 'package:flutter/material.dart';

class WhatisScreen extends StatelessWidget {
  int index = 0;
  WhatisScreen({Key? key, required this.index}) : super(key: key);

  List<Widget> dialogs = [
    tasksDialog(),
    sessionDialog(),
    teamDialog(),
    doubtsDialog(),
  ];

  @override
  Widget build(BuildContext context) {
    return dialogs[index];
  }
}

Widget tasksDialog() {
  return AlertDialog(
    content: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "¿Qué estoy viendo?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "En la seccion de tareas podras encontrar tus tareas pendientes y finalizadas.",
                style: TextStyle(fontSize: 12)),
            Text("\nTareas pendientes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Text(
                "En tus tareas pendientes encontraras las tareas que aún no realizas. En la izquierda se encontrará el color de la prioridad de la tarea, seguido por la cantidad de objetivos que se han realizado junto con el nombre de la tarea y su descripción. También encontrarás un botón en donde podrás indicar si estas trabajando en la tarea o no.",
                style: TextStyle(fontSize: 12)),
            Text("\nTareas finalizadas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Text(
                "En tus tareas finalizadas encontrarás las tareas que terminaste.",
                style: TextStyle(fontSize: 12)),
            Text("\nFiltro",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Text(
                "En la parte de arriba existe un botón en donde podrás filtrar tus tareas segun el criterio que mejor estimes conveniente.",
                style: TextStyle(fontSize: 12))
          ],
        ),
      ),
    ),
  );
}

Widget sessionDialog() {
  return AlertDialog(
    content: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "¿Qué estoy viendo?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "En la seccion de sesiones podras encontrar tus tareas pendientes y finalizadas.",
                style: TextStyle(fontSize: 12)),
            Text("\nTareas pendientes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Text(
                "En tus tareas pendientes encontraras las tareas que aún no realizas. En la izquierda se encontrará el color de la prioridad de la tarea, seguido por la cantidad de objetivos que se han realizado junto con el nombre de la tarea y su descripción. También encontrarás un botón en donde podrás indicar si estas trabajando en la tarea o no.",
                style: TextStyle(fontSize: 12)),
            Text("\nTareas finalizadas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Text(
                "En tus tareas finalizadas encontrarás las tareas que terminaste.",
                style: TextStyle(fontSize: 12)),
            Text("\nFiltro",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Text(
                "En la parte de arriba existe un botón en donde podrás filtrar tus tareas segun el criterio que mejor estimes conveniente.",
                style: TextStyle(fontSize: 12))
          ],
        ),
      ),
    ),
  );
}

Widget teamDialog() {
  return AlertDialog(
    content: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "¿Qué estoy viendo?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "En la seccion de equipo podras encontrar tus tareas pendientes y finalizadas.",
                style: TextStyle(fontSize: 12)),
            Text("\nTareas pendientes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Text(
                "En tus tareas pendientes encontraras las tareas que aún no realizas. En la izquierda se encontrará el color de la prioridad de la tarea, seguido por la cantidad de objetivos que se han realizado junto con el nombre de la tarea y su descripción. También encontrarás un botón en donde podrás indicar si estas trabajando en la tarea o no.",
                style: TextStyle(fontSize: 12)),
            Text("\nTareas finalizadas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Text(
                "En tus tareas finalizadas encontrarás las tareas que terminaste.",
                style: TextStyle(fontSize: 12)),
            Text("\nFiltro",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Text(
                "En la parte de arriba existe un botón en donde podrás filtrar tus tareas segun el criterio que mejor estimes conveniente.",
                style: TextStyle(fontSize: 12))
          ],
        ),
      ),
    ),
  );
}

Widget doubtsDialog() {
  return AlertDialog(
    content: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "¿Qué estoy viendo?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "En la seccion de dudas podras encontrar tus tareas pendientes y finalizadas.",
                style: TextStyle(fontSize: 12)),
            Text("\nTareas pendientes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Text(
                "En tus tareas pendientes encontraras las tareas que aún no realizas. En la izquierda se encontrará el color de la prioridad de la tarea, seguido por la cantidad de objetivos que se han realizado junto con el nombre de la tarea y su descripción. También encontrarás un botón en donde podrás indicar si estas trabajando en la tarea o no.",
                style: TextStyle(fontSize: 12)),
            Text("\nTareas finalizadas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Text(
                "En tus tareas finalizadas encontrarás las tareas que terminaste.",
                style: TextStyle(fontSize: 12)),
            Text("\nFiltro",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Text(
                "En la parte de arriba existe un botón en donde podrás filtrar tus tareas segun el criterio que mejor estimes conveniente.",
                style: TextStyle(fontSize: 12))
          ],
        ),
      ),
    ),
  );
}
