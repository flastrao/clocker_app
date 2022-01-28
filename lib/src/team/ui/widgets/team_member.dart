import 'package:cloker_app/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class TeamMember extends StatefulWidget {
  String memberName;
  String department;
  String lastSesionData;
  TeamMember({
    Key? key,
    required this.memberName,
    required this.department,
    required this.lastSesionData,
  });

  @override
  State<TeamMember> createState() => _TeamMemberState();
}

class _TeamMemberState extends State<TeamMember> {
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
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.memberName,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(widget.department,
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 14)),
                    Text(widget.lastSesionData,
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 10)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: width * 0.33),
                child: GenericButton(
                  context: context,
                  textOrIcon: true,
                  width: width * 0.1,
                  height: height * 0.04,
                  buttonText: "ver perfil",
                  onPressed: () => onPressed1(),
                  firstColor: Colors.white,
                  secondColor: Colors.white,
                  textSize: 10,
                  textColor: Color(0xFF303030),
                  shadow: false,
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
