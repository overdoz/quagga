import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../shapes/triangles.dart';

class ReceiptContainer extends StatelessWidget {
  ReceiptContainer({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    // Material is a conceptual piece of paper on which the UI appears.
    return Column(
      children: <Widget>[
        CustomPaint(
          size: Size(width - 20, 6),
          painter: ShapesPainter(color: Colors.black, rotate: false),
        ),
        GestureDetector(
          onTap: () {
            onPressed();
          },
          child: Container(
              width: width - 20,
              height: 100,
              decoration: new BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("hallo", style: TextStyle(color: Colors.white)),
              )),
        ),
        CustomPaint(
          size: Size(width - 20, 6), //2
          painter: ShapesPainter(color: Colors.black, rotate: true), //3
        ),
      ],
    );
  }
}
