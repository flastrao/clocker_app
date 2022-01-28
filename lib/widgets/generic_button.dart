import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenericButton extends StatelessWidget {
  String buttonText;
  IconData icon;
  final bool textOrIcon;
  final VoidCallback onPressed;
  final BuildContext context;
  double height;
  double width;
  Color firstColor;
  Color secondColor;
  double textSize;
  double letterSpacing;
  Color textColor;
  bool heavyFont;
  double circularRadius;
  double topMargin;
  double bottomMargin;
  double rightMargin;
  double leftMargin;
  double beginFracFirst;
  double beginFracSecond;
  double endFracFirst;
  double endFracSecond;
  String fontFamily;
  bool shadow;

  GenericButton(
      {Key? key,
      required this.textOrIcon,
      this.buttonText = "",
      this.icon = Icons.keyboard_arrow_down_rounded,
      required this.onPressed,
      required this.context,
      this.height = 50.0,
      this.width = 100.0,
      this.firstColor = Colors.indigo, //Color(0xFF0B3D5A),
      this.secondColor = Colors.black, //Color(0xFF1E7691),
      this.textSize = 18,
      this.textColor = Colors.white,
      this.letterSpacing = 0,
      this.heavyFont = false,
      this.circularRadius = 10,
      this.topMargin = 10,
      this.bottomMargin = 10,
      this.rightMargin = 15,
      this.leftMargin = 15,
      this.beginFracFirst = 0.7,
      this.beginFracSecond = 0.0,
      this.endFracFirst = 1.0,
      this.endFracSecond = 0.6,
      this.fontFamily = "Lato",
      this.shadow = false});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Text Texto = Text(
      buttonText,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: heavyFont ? FontWeight.bold : null,
        fontFamily: this.fontFamily,
        letterSpacing: this.letterSpacing,
        fontSize: this.textSize,
        color: textColor,
      ),
    );
    // ignore: non_constant_identifier_names
    Icon Icono = const Icon(
      Icons.keyboard_arrow_down_rounded,
      color: Colors.white,
      size: 35,
    );
    return Container(
      margin: EdgeInsets.only(
        top: this.topMargin,
        left: this.leftMargin,
        right: this.rightMargin,
        bottom: this.bottomMargin,
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: this.height,
          width: this.width,
          decoration: shadow
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(this.circularRadius),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color: Colors.black87,
                        blurRadius: 5.0,
                        offset: Offset(2.0, 3.0))
                  ],
                  gradient: LinearGradient(
                    colors: [firstColor, secondColor],
                    begin: FractionalOffset(this.beginFracFirst,
                        this.beginFracSecond), // SEGUNDO, 0.5 Y TERCERO 0.2
                    end:
                        FractionalOffset(this.endFracFirst, this.endFracSecond),
                    stops: [0.05, 1.95],
                    tileMode: TileMode.clamp,
                  ))
              : const BoxDecoration(),
          child: Center(
            child: textOrIcon ? Texto : Icono,
          ),
        ),
      ),
    );
  }
}
