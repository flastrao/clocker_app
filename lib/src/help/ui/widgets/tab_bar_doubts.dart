import 'package:cloker_app/bloc/app_bloc.dart';
import 'package:cloker_app/src/help/ui/widgets/general_tab.dart';
import 'package:cloker_app/src/help/ui/widgets/historic_tab.dart';
import 'package:cloker_app/src/help/ui/widgets/mine_tab.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

// ignore: must_be_immutable
class TabSelecterDoubt extends StatefulWidget {
  TabSelecterDoubt({
    Key? key,
  }) : super(key: key);

  @override
  _TabSelecterDoubtState createState() => _TabSelecterDoubtState();
}

class _TabSelecterDoubtState extends State<TabSelecterDoubt>
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
                  Tab(text: "General"),
                  Tab(text: "Mis dudas"),
                  Tab(text: "Historico"),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    GeneralTab(),
                    MineTab(),
                    HistoricTab(),
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
