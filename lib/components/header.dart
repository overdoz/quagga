import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({this.title});

  // Fields in a Widget subclass are always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontFamily: "Steelfish",

            decoration: TextDecoration.underline,
            // decorationStyle: TextDecorationStyle.wavy,
            decorationColor: Color(0xFF00E9BC),
            decorationThickness: 12,
          ),
        ),
        Text(
          title,
          style: TextStyle(fontFamily: "Steelfish"),
        ),
      ],
    );
  }
}
