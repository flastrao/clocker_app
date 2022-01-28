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
    return this.height;
  }

  double getWidth() {
    return this.width;
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
