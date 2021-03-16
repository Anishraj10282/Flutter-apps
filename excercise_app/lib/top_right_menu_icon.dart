import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.purple[200]),
              child: Icon(Icons.menu),
            )));
  }
}
