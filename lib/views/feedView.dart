import 'package:flutter/material.dart';
import '../main.dart';
import '../components/receiptContainer.dart';
import './quaggCommentsView.dart';
import '../components/header.dart';

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // Material is a conceptual piece of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Header(title: "Honzi 69"),
          ),
          Expanded(
              child: ListView(
            itemExtent: 130,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              ReceiptContainer(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
              ),
              ReceiptContainer(),
              ReceiptContainer(),
              ReceiptContainer(),
              ReceiptContainer(),
              ReceiptContainer(),
              ReceiptContainer(),
              ReceiptContainer(),
            ],
          ))

          //_buildList(),
        ],
      ),
    );
  }
}
