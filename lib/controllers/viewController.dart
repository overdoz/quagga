import 'package:flutter/material.dart';
import '../views/feedView.dart';
import '../components/buttons/NavigationButton.dart';
import '../views/spotsView.dart';

class ViewController extends StatefulWidget {
  ViewController({Key key}) : super(key: key);
  _ViewControllerState createState() => _ViewControllerState();
}

class _ViewControllerState extends State<ViewController> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: 0, keepPage: true, viewportFraction: 1.0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void grow() {
    setState(() {
      //_size += 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            MyScaffold(),
            SpotsView(),
            Center(child: Text("3")),
          ],
        ),
        Column(
          children: <Widget>[
            Spacer(),
            Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    NavigationButton(
                      index: 0,
                      activeIndex: 4,
                      icon: Icon(Icons.camera),
                      onPressed: () {
                        if (_pageController.hasClients) {
                          _pageController.animateToPage(
                            0,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    ),
                    NavigationButton(
                      index: 1,
                      activeIndex: 4,
                      icon: Icon(Icons.dashboard),
                      onPressed: () {
                        if (_pageController.hasClients) {
                          _pageController.animateToPage(
                            1,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    ),
                    NavigationButton(
                      index: 2,
                      activeIndex: 4,
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        if (_pageController.hasClients) {
                          _pageController.animateToPage(
                            2,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    ),
                  ],
                ))
          ],
        )
      ],
    );
  }
}
