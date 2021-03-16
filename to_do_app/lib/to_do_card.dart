import 'package:flutter/material.dart';

class ToDoCard extends StatelessWidget {
  final String title;
  final String time;
  final Color color;
  final bool icon;

  ToDoCard(
      {@required this.title,
      @required this.time,
      @required this.color,
      @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
        margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
        decoration: BoxDecoration(
            color:icon?Colors.white70:Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color:Colors.black12
            ),
            boxShadow: [
              BoxShadow(spreadRadius: 1, blurRadius: 10, color:icon?Colors.black12:Colors.black45)
            ]),
        child: Row(
          children: [
            Container(
              width: 4,
              height: 70,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(width: 10),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, color: icon?Colors.black54:Colors.black),
              ),
              SizedBox(height: 10),
              Text('Time', style: TextStyle(color: Colors.black54)),
              SizedBox(height: 5),
              Text(time, style: TextStyle(color: Colors.black54))
            ]),
            Spacer(),
            Icon(
                icon ? Icons.check_box_outlined : Icons.check_box_outline_blank,
                size: 40,
                color: icon ? Colors.green[300] : Colors.black54)
          ],
        ));
  }
}
