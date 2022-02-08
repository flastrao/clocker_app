import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/src/task/ui/widgets/task_actions.dart';
import 'package:flutter/material.dart';
import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Task extends StatefulWidget {
  late bool status;
  String progress;
  String title;
  String goal;
  String description;
  String term;
  int progressStatus;
  String deadline;

  Task({
    Key? key,
    required this.progress,
    required this.title,
    required this.goal,
    required this.description,
    required this.term,
    required this.progressStatus,
    required this.deadline,
  });

  @override
  State<Task> createState() => _Task();
}

List dropdownItemList = [];

List<String> reactions = [
  'Work',
  'Play',
  'Pause',
];

class _Task extends State<Task> {
  List<Map> reactionsMap = [];

  @override
  void initState() {
    for (var i = 0; i < reactions.length; i++) {
      reactionsMap.add({
        'label': '${reactions[i]}',
        'value': '${reactions[i]}',
        'icon': Container(
            height: 25,
            width: 25,
            child: Icon(
              Icons.ac_unit,
              color: Colors.black,
            )),
      });
    }
    for (var i = 0; i < reactions.length; i++) {
      dropdownItemList.add(
        {
          'label':
              reactions[i] == 'melon' ? 'melon sugar high' : '${reactions[i]}',
          // 'label': '${fruits[i]}',
          'value': '${reactions[i]}',
          'icon': Container(
              key: UniqueKey(),
              height: 20,
              width: 20,
              child: Icon(
                Icons.ac_unit,
                color: Colors.black,
              )),
          'selectedIcon': Container(
              key: UniqueKey(),
              width: 20,
              height: 20,
              child: Icon(
                Icons.ac_unit,
                color: Colors.black,
              )),
        },
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    Container userTag(name, bool active) {
      return Container(
        alignment: Alignment.center,
        width: width * 0.28,
        height: height * 0.04,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey)),
        child: Row(
          children: [
            Icon(
              Icons.circle,
              size: width * 0.06,
              color: active ? Colors.black : Colors.grey,
            ),
            Text(
              "   " + name,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      );
    }

    Container objetive(String objetiveDescription, bool progressStatus) {
      return (Container(
        height: height * 0.05,
        margin: EdgeInsets.only(top: height * 0.005),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: width * 0.02),
                width: width * 0.57,
                child: Text(
                  objetiveDescription,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                )),
            InkWell(
              child: Icon(Icons.check_box_rounded,
                  color: progressStatus ? Colors.black : Colors.grey),
            )
          ],
        ),
      ));
    }

    AlertDialog detailsDialog() {
      return AlertDialog(
        content: SingleChildScrollView(
          child: Container(
            width: width * 0.8,
            margin: EdgeInsets.symmetric(vertical: 10.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: width * 0.2,
                      height: height * 0.04,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey)),
                      child: Text(
                        "Backend",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: width * 0.2,
                      height: height * 0.04,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: width * 0.06,
                            color: Colors.black,
                          ),
                          Text(
                            "   Alta",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: height * 0.05,
                  child: Text(
                    widget.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  widget.deadline,
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  "\nDESCRIPCIÓN",
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  widget.description,
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "\nASIGNACIÓN\n",
                  style: TextStyle(fontSize: 10),
                ),
                Row(
                  children: [
                    userTag("Nombre.A", false),
                    userTag("Nombre.A", false),
                  ],
                ),
                Text(
                  "\nCRITERIOS DE ACEPTACIÓN\n",
                  style: TextStyle(fontSize: 10),
                ),
                objetive("Descripcion de objetivo", true),
                objetive("Descripcion de objetivo", true),
                objetive("Descripcion de objetivo", false),
                actions(false, true)
              ],
            ),
          ),
        ),
      );
    }

    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.12,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(color: Color(0xFFBDBDBD), width: size.width * 0.05),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: size.width * 0.05, bottom: size.height * 0.018),
                  width: size.width * 0.08,
                  height: size.width * 0.08,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(7)),
                  child: Text(
                    "${widget.progress}/${widget.goal}",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  )),
              Container(
                margin: EdgeInsets.only(
                    left: size.width * 0.05, top: size.height * 0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => showDialog(
                          context: context,
                          builder: (BuildContext context) => detailsDialog()),
                      child: Text(
                        widget.title,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: "Poppins"),
                      ),
                    ),
                    Container(
                      height: size.height * 0.053,
                      width: size.width * 0.6,
                      color: Colors.white,
                      child: Text(
                        widget.description,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFFBDBDBD),
                            fontFamily: "Poppins"),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: CoolDropdown(
                  dropdownList: reactionsMap,
                  onChange: (dropdownItem) {},
                  resultHeight: 50,
                  resultWidth: 50,
                  dropdownWidth: 50,
                  dropdownHeight: 130,
                  dropdownItemHeight: 30,
                  dropdownItemGap: 10,
                  resultIcon: Container(
                    width: 25,
                    height: 25,
                    child: Container(
                      width: 25,
                      height: 25,
                      child: Icon(Icons.work),
                    ),
                  ),
                  resultIconLeftGap: 0,
                  resultPadding: EdgeInsets.zero,
                  resultIconRotation: true,
                  resultIconRotationValue: 1,
                  isDropdownLabel: false,
                  isResultLabel: false,
                  isResultIconLabel: false,
                  dropdownPadding: EdgeInsets.zero,
                  resultAlign: Alignment.center,
                  resultMainAxis: MainAxisAlignment.center,
                  dropdownItemMainAxis: MainAxisAlignment.center,
                  selectedItemBD: BoxDecoration(
                      border: Border(
                          left: BorderSide(
                              color: Colors.black.withOpacity(0.7), width: 3))),
                  triangleWidth: 10,
                  triangleHeight: 10,
                  triangleAlign: 'center',
                  dropdownAlign: 'center',
                  gap: 20,
                ),
                /* 
                margin: EdgeInsets.only(left: size.width * 0.048),
                child: InkWell(
                  child: const Icon(
                    Icons.handyman,
                    color: Color(0xFF212121),
                    size: 35,
                    semanticLabel: "Menu",
                  ),
                  onTap: () => {
                    Reactions(),
                  },
                ), */
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: size.width * 0.8),
            height: size.height * 0.02,
            color: Colors.white,
            child: Container(
              child: Text(
                widget.term,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFFBDBDBD),
                  fontFamily: "Roboto",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
