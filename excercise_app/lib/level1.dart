import 'dart:ui';

import 'package:excercise_app/days_card.dart';
import 'package:flutter/material.dart';

class Level1 extends StatelessWidget {

  static const routeName = './level1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[400],
          actions: [
            IconButton(
                padding: EdgeInsets.all(10),
                icon: Icon(Icons.menu, size: 30, color: Colors.white),
                onPressed: null)
          ],
          title: Text('Level 1',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
        ),
        body: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.purple[200]),
          ),
          Column(children: [
            SizedBox(height: 20),
            Image.asset('assets/images/level1.png'),
            SizedBox(height: 10),
            InkWell(
                child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.purple,
              ),
              child: Center(
                  child: Text(
                'Ready To Go',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              )),
            )),
            SizedBox(height: 15),
            Expanded(
                child: ListView(
              children: [
                DayCard(title: 'Day 1', subtitle: '9 exercises'),
                Divider(color: Colors.black87, thickness: 1),
                DayCard(title: 'Day 2', subtitle: '9 exercises'),
                Divider(color: Colors.black87, thickness: 1),
                DayCard(title: 'Day 3', subtitle: '10 exercises'),
                Divider(color: Colors.black87, thickness: 1),
                DayCard(title: 'Day 4', subtitle: '9 exercises'),
                Divider(color: Colors.black87, thickness: 1),
                DayCard(title: 'Day 5', subtitle: '10 exercises'),
                Divider(color: Colors.black87, thickness: 1),
                DayCard(title: 'Day 6', subtitle: '11 exercises'),
                Divider(color: Colors.black87, thickness: 1),
                DayCard(title: 'Day 7', subtitle: '12 exercises'),


              ],
            ))
          ])
        ]));
  }
}
