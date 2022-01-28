import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Task extends StatelessWidget {
  late bool status;
  String progress;
  String title;
  String goal;
  String description;
  String term;
  int progressStatus;
  Task(
      {Key? key,
      required this.progress,
      required this.title,
      required this.goal,
      required this.description,
      required this.term,
      required this.progressStatus});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return (Container(
        height: size.height * 0.12,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                left: BorderSide(
                    color: Color(0xFFBDBDBD), width: size.width * 0.05))),
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
                      "${progress}/${goal}",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )),
                Container(
                  margin: EdgeInsets.only(
                      left: size.width * 0.05, top: size.height * 0.01),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: "Poppins"),
                      ),
                      Container(
                        height: size.height * 0.053,
                        width: size.width * 0.6,
                        color: Colors.white,
                        child: Text(
                          description,
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFFBDBDBD),
                              fontFamily: "Poppins"),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: size.width * 0.048),
                  child: Icon(
                    Icons.handyman,
                    color: Color(0xFF212121),
                    size: 35,
                    semanticLabel: "Menu",
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: size.width * 0.8),
              height: size.height * 0.02,
              color: Colors.white,
              child: Container(
                child: Text(term,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFBDBDBD),
                      fontFamily: "Roboto",
                    )),
              ),
            ),
          ],
        )));
  }
}
