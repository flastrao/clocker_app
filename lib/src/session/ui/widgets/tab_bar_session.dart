import 'package:clocker_app/bloc/app_bloc.dart';
import 'package:clocker_app/src/session/ui/widgets/day_tab.dart';
import 'package:clocker_app/src/session/ui/widgets/month_tab.dart';
import 'package:clocker_app/src/session/ui/widgets/week_tab.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

// ignore: must_be_immutable
class TabSelecterSession extends StatefulWidget {
  TabSelecterSession({
    Key? key,
  }) : super(key: key);

  @override
  _TabSelecterSession createState() => _TabSelecterSession();
}

class _TabSelecterSession extends State<TabSelecterSession>
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
    _tabController = new TabController(length: 3, vsync: this);
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
                  Tab(text: "Dia"),
                  Tab(text: "Semana"),
                  Tab(text: "Mes"),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    DayTab(),
                    WeekTab(),
                    MonthTab(),
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
