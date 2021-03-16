import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(top:20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      ClipOval(
        child: Container(
          width: 50,
          height: 50,
          child: Image.asset('assets/images/user3.png'),
          decoration: BoxDecoration(shape: BoxShape.circle),
        ),
      ),
      Container(child: Icon(Icons.search, size: 50, color: Colors.black26))
    ]));
  }
}
