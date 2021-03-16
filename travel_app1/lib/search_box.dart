import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: -25,
        child: Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            boxShadow: [
              new BoxShadow(color: Colors.black26, blurRadius: 10.0)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black26),
          ),
          padding: EdgeInsets.fromLTRB(12, 1, 0, 0),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Enter a Search Text',
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search)),
          ),
        ));
  }
}