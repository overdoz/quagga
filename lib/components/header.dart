import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({this.title});

  // Fields in a Widget subclass are always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.blue),
      child: Text(title),
    );
  }
}
