import 'package:excercise_app/level1.dart';
import 'package:excercise_app/level_card.dart';
import 'package:excercise_app/top_right_menu_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Yoga extends StatelessWidget {
  static const routeName = '/yoga';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
            ),
            body: Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.45,
                  decoration: BoxDecoration(
                      color: Colors.purple[200],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                ),
                Column(
                  children: [
                   MenuIcon(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text('Get Ready For Your \n    Yoga Exercises',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              SizedBox(height: 10),
                              Text(
                                '30 min exercise',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54,
                                    fontSize: 20),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                      'Live happier and healthier by \nlearning and performing\nthe fundamentals of yoga.',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black87))),
                            ],
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: size.height * 0.22,
                                width: size.width * 0.5,
                                child: Image.asset(
                                  'assets/images/yoga_bcak.png',
                                ),
                              ))
                        ]),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: GridView.count(
                              semanticChildCount: 8,
                              mainAxisSpacing: 12,
                              childAspectRatio: 2.75,
                              crossAxisCount: 2,
                              children: [
                                InkWell(child:LevelCard(text: 'Level 1'),
                                  onTap:(){
                                  Navigator.of(context).pushNamed(Level1.routeName);
                                  } ,),
                                LevelCard(text: 'Level 2'),
                                LevelCard(text: 'Level 3'),
                                LevelCard(text: 'Level 4'),
                                LevelCard(text: 'Level 5'),
                                LevelCard(text: 'Level 6'),
                                LevelCard(text: 'Level 7'),
                                LevelCard(text: 'Level 8'),
                              ],
                            ))),
                    Container(
                        padding: EdgeInsets.fromLTRB(20, 15, 15, 15),
                        decoration: BoxDecoration(
                          border: Border.all(color:Colors.black12),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 3,
                                  blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.purple[100]),
                        margin: EdgeInsets.fromLTRB(10, 10, 15, 30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Intermediate',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87),
                              ),
                              Icon(Icons.lock, color: Colors.black38)
                            ])),
                    Container(
                        padding: EdgeInsets.fromLTRB(20, 15, 15, 15),
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.black12),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 3,
                                  blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.purple[100]),
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 40),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Expert',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87),
                              ),
                              Icon(Icons.lock, color: Colors.black38)
                            ]))
                  ],
                )
              ],
            )));
  }
}
