import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100.0,
          height: 100.0,
          child: Text(
            "Seccion de ayuda",
            style: TextStyle(fontSize: 14.0),
          ),
          color: Colors.white,
        ),
      ],
    );
  }
}
