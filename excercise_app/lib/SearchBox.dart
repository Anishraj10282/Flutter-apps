import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Enter a Text',
                style: TextStyle(color: Colors.black54, fontSize: 18)),
            Icon(Icons.search, color: Colors.black54)
          ]),
      padding: EdgeInsets.all(14),
    );
  }
}
