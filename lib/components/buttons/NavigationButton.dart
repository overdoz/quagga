import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  NavigationButton({this.index, this.activeIndex, this.icon, this.onPressed});

  final int index;
  final int activeIndex;
  final Icon icon;
  final VoidCallback onPressed;
  final color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Ink(
        // decoration: const ShapeDecoration(
        //   color: Colors.lightBlue,
        //   shape: CircleBorder(),
        // ),
        child: IconButton(
          icon: icon,
          color: color,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
