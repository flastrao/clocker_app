import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/src/team/ui/screens/member_profile.dart';
import 'package:clocker_app/widgets/generic_button.dart';
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
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return Column(
      children: <Widget>[
        Container(
          height: height * 0.12,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              left: BorderSide(
                color: Colors.black,
                width: width * 0.05,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: width * 0.02,
                  top: height * 0.028,
                ),
                height: height * 0.8,
                width: width * 0.5,
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.memberName,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      widget.department,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height * 0.01),
                      child: Text(
                        widget.lastSesionData,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: width * 0.23),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MemberProfile()));
                  },
                  child: const Text("Ver perfil"),
                ),
              ),
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
