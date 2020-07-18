import 'package:flutter/material.dart';
import '../components/header.dart';

class SpotsView extends StatefulWidget {
  @override
  _SpotsViewState createState() => _SpotsViewState();
}

class _SpotsViewState extends State<SpotsView> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: 0, keepPage: true, viewportFraction: 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Header(
                  title: "My Spots",
                ),
                Header(
                  title: "Subscribed",
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: <Widget>[
                Center(
                  child: Text("My Spots"),
                ),
                Center(
                  child: Text("Subscribed"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
