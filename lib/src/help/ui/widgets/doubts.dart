import 'package:cloker_app/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Doubt extends StatefulWidget {
  String doubtTitle;
  String doubtDescription;
  Doubt({
    Key? key,
    required this.doubtTitle,
    required this.doubtDescription,
  });

  @override
  State<Doubt> createState() => _Doubt();
}

class _Doubt extends State<Doubt> {
  late bool status;
  @override
  void onPressed1() {}

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Column(
      children: [
        Container(
          height: size.height * 0.12,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  left: BorderSide(
                      color: Colors.black, width: size.width * 0.05))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.02, top: height * 0.028),
                height: height * 0.8,
                width: width * 0.5,
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.doubtTitle,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(widget.doubtDescription,
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 14)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: width * 0.24),
                child: GenericButton(
                  context: context,
                  textOrIcon: true,
                  width: width * 0.1,
                  height: height * 0.04,
                  buttonText: "ver duda",
                  onPressed: () => onPressed1(),
                  firstColor: Colors.white,
                  secondColor: Colors.white,
                  textSize: 10,
                  textColor: Color(0xFF303030),
                ),
              )
            ],
          ),
        ),
        Container(
          height: height * 0.02,
        )
      ],
    );
  }
}
