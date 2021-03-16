import 'package:excercise_app/SearchBox.dart';
import 'package:excercise_app/exercise_card.dart';
import 'package:excercise_app/level1.dart';
import 'package:excercise_app/level_card.dart';
import 'package:excercise_app/yoga.dart';
import 'package:flutter/material.dart';
import './top_right_menu_icon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise App',
      home: MyHomeScreen(),
      routes: {
        Yoga.routeName: (ctx) => Yoga(),
        Level1.routeName: (ctx)=>Level1(),
      },
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar:BottomNavigationBar(items:[
            BottomNavigationBarItem(icon: Icon(Icons.home, size:40),label:'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.food_bank, size:40),label:'Diet'),
            BottomNavigationBarItem(icon: Icon(Icons.settings, size:40),label: 'Settings')
              ], onTap:null, selectedItemColor: Colors.purple[800],),
        body: Stack(children: [
      Container(
        height: size.height * 0.45,
        decoration: BoxDecoration(
          color: Color.fromRGBO(210, 189, 250, 1),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
        ),
        child: Image.asset('assets/images/background.png'),
        alignment: Alignment.centerLeft,
      ),
      Padding(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            MenuIcon(),
            SizedBox(height: 15),
            Align(
                alignment: Alignment.center,
                child: Text(
                  'PROGRESS IS PROGRESS',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(height:3),
            Align(
                alignment: Alignment.center,
                child: Text(
                  'NO MATTERS HOW SMALL ',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 30),
            SearchBox(),
            SizedBox(height: 45),
            Expanded(child:GridView.count(
              childAspectRatio: 3/4,
              crossAxisSpacing: 15,
              primary: false,
              crossAxisCount: 2,
              children: [
                ExerciseCard(imageUrl:'assets/images/abs2.jpg'),
                ExerciseCard(imageUrl:'assets/images/back.jpg'),
                ExerciseCard(imageUrl:'assets/images/biceps.jpg'),
                ExerciseCard(imageUrl:'assets/images/chest.jpg',),
                ExerciseCard(imageUrl:'assets/images/shooulder.jpg',),
                ExerciseCard(imageUrl:'assets/images/legs.jpg'),
                ExerciseCard(imageUrl:'assets/images/triceps.jpg'),
              InkWell(child:Container(
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.only(bottom: 10, top: 10),
                  height: 200,
                  child: Center(child:Image.asset('assets/images/yoga.jpg')),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 10),
                            spreadRadius: 2,
                            blurRadius: 5)
                      ])),
                onTap: (){
                Navigator.of(context).pushNamed(Yoga.routeName);
                },

              )
              ],
            )),
          ])),
    ])));
  }
}
