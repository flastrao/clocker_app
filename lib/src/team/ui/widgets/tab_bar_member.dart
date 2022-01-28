import 'package:cloker_app/bloc/app_bloc.dart';
import 'package:cloker_app/src/task/ui/widgets/finished_task.dart';
import 'package:cloker_app/src/task/ui/widgets/pending_tab.dart';
import 'package:cloker_app/src/team/ui/widgets/active_tab.dart';
import 'package:cloker_app/src/team/ui/widgets/inactive_tab.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

// ignore: must_be_immutable
class TabSelecterMember extends StatefulWidget {
  TabSelecterMember({
    Key? key,
  }) : super(key: key);

  @override
  _TabSelecterMemberState createState() => _TabSelecterMemberState();
}

class _TabSelecterMemberState extends State<TabSelecterMember>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void dispose() {
    // Declara la función periódica, llamada cuando se destruye

    super.dispose();
    _tabController.dispose(); // Destruye, también destruye _tabController
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);

    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    return Expanded(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: TabBar(
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                controller: this._tabController,
                tabs: const <Widget>[
                  Tab(text: "Activos"),
                  Tab(text: "Inactivos"),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    ActiveTab(),
                    InactiveTab(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
