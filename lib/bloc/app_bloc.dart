import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class AppBloc extends Bloc {
  //-------------------------------------------------------------------------//

  double width = 0;
  double height = 0;

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
