import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  final String imageUrl;

  ExerciseCard({@required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.only(bottom: 10, top: 10),
      height: 200,
      child: Center(child:Image.asset(imageUrl)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 10),
                spreadRadius: 2,
                blurRadius: 5)
          ]));
  }
}
