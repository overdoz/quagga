import 'package:flutter/material.dart';
import '../views/feedView.dart';

class ViewController extends StatefulWidget {
  _ViewControllerState createState() => _ViewControllerState();
}

class _ViewControllerState extends State<ViewController> {
  PageController _pageController;

  void grow() {
    setState(() {
      //_size += 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        MyScaffold(),
        Center(child: Text("2")),
        Center(child: Text("3")),
      ],
    );
  }
}
