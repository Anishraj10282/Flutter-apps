import 'package:excercise_app/yoga.dart';
import 'package:flutter/material.dart';

class LevelCard extends StatelessWidget {
  final String text;

  LevelCard({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(10),
      padding:EdgeInsets.only(left:15),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(spreadRadius: 5, color:Colors.black12,blurRadius: 10)],
            color:Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          Text(text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color:Colors.black87)),
              Icon(Icons.play_circle_fill, size: 35,),
        ]));
  }
}
