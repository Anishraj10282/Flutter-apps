import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/app_bar.dart';


class NewTask extends StatefulWidget {

  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask>{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            padding: EdgeInsets.only(top: 8, left: 10, right: 10, bottom: 15),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(color: Colors.black12, spreadRadius: 10, blurRadius: 10)
            ]),
            child: TopBar()),
        Container(
            margin: EdgeInsets.only(top: 30, bottom: 30),
            child: Text(
              'Add new Task',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.double,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            )),
        Container(
          width:MediaQuery.of(context).size.width * 0.9,
            child: Column(children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Task Name:",
            ),
          ),
              IconButton(icon:Icon(Icons.alarm, size: 40 ,), onPressed: (){
                timePicker(context);
                print(time);
              },),
              Text('Time-:${time.hour}:${time.minute}')
        ]))
      ],
    ));
  }
}
