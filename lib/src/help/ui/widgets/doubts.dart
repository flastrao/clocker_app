import 'package:cloker_app/bloc/app_bloc.dart';
import 'package:cloker_app/src/help/ui/screens/new_doubt_screen.dart';
import 'package:cloker_app/src/help/ui/widgets/doubt_detail.dart';
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
                      widget.doubtTitle,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      widget.doubtDescription,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
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
                              builder: (context) => DoubtDetail()));

                      /* showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              const DoubtDetail()); */
                    },
                    child: const Text("Ver duda"),
                  ))
            ],
          ),
        ),
        //const Divider(),
      ],
    );
  }
}
