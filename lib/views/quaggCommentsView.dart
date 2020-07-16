import 'package:flutter/material.dart';
import 'package:quagga_app/components/receiptContainer.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: <Widget>[
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10),
            child: BackButton(
              onPressed: () => Navigator.pop(context),
            )),
        Center(
            child: ReceiptContainer(
          onPressed: () => Navigator.pop(context),
        ))
      ],
    ));

    // Center(
    //   child: RaisedButton(
    //     onPressed: () {
    //       Navigator.pop(context);
    //     },
    //     child: Text('Go back!'),
    //   ),
    // );
  }
}
