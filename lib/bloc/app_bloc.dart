import 'dart:async';

import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class AppBloc extends Bloc {
  //-------------------------------------------------------------------------//

  double width = 0;
  double height = 0;
  int _selectedIndex = 0;

  //-------------------------------------------------------------------------//

  StreamController<int> indexStream = StreamController.broadcast();

  void setIndex(int index) {
    _selectedIndex = index;
    indexStream.sink.add(_selectedIndex);
  }

  int getIndex() {
    return _selectedIndex;
  }

  //-------------------------------------------------------------------------//

  void setWidthAndHeight(double width, double height) {
    this.height = height;
    this.width = width;
  }

  double getHeight() {
    return height;
  }

  double getWidth() {
    return width;
  }

  Future<bool> isLoged() async {
    bool isLoged;
    isLoged = true;
    return isLoged;
  }

  //bool isLogged = false;

  //-------------------------------------------------------------------------//
  @override
  void dispose() {}
}
