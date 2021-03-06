import 'package:flutter/material.dart';
import 'components/receiptContainer.dart';
import 'views/quaggCommentsView.dart';
import 'controllers/viewController.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56.0, // in logical pixels
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        // decoration: BoxDecoration(color: Colors.blue[500]),
        // Row is a horizontal, linear layout.
        child: SafeArea(
          child: Row(
            // <Widget> is the type of items in the list.
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Navigation menu',
                onPressed: null, // null disables the button
              ),
              // Expanded expands its child to fill the available space.
              Expanded(
                child: Center(
                  child: title,
                ),
              ),
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: null,
              ),
            ],
          ),
        ));
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // Material is a conceptual piece of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: <Widget>[
          // MyAppBar(
          //   title: Text(
          //     'Example title',
          //   ),
          // ),
          // Expanded(
          //     child: ListView(
          //   scrollDirection: Axis.vertical,
          //   children: <Widget>[
          //     ReceiptContainer(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => SecondRoute()),
          //         );
          //       },
          //     ),
          //     ReceiptContainer(),
          //     ReceiptContainer(),
          //     ReceiptContainer(),
          //     ReceiptContainer(),
          //     ReceiptContainer(),
          //     ReceiptContainer(),
          //     ReceiptContainer(),
          //   ],
          // ))
          Expanded(child: ViewController())

          //_buildList(),
        ],
      ),
    );
  }
}

Widget _buildList() => ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[ReceiptContainer(), ReceiptContainer()],
    );

void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyScaffold(),
  ));
}
