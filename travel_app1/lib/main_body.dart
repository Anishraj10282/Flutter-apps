import 'package:flutter/material.dart';
import 'package:travel_app1/place_card.dart';
import 'package:travel_app1/search_box.dart';
import 'package:travel_app1/section_title.dart';
import './models/Location.dart';

class buildBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/home_bg.png', fit: BoxFit.cover),
          Column(
            children: [
              Text(
                'Travelers',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 60),
              ),
              Text('Travel Community App',
                  style: TextStyle(
                      color: Colors.white60, fontWeight: FontWeight.bold))
            ],
          ),
          SearchBox(),
        ],
      ),
      SizedBox(height: 40),
      SectionTitle(
        mainTitle: 'Most Visited Places',
        secondaryTitle: 'View More',
      ),
      SizedBox(height: 10),
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
              height: 200,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  PlaceCard(location: LocationList().locations[0]),
                  SizedBox(width: 15),
                  PlaceCard(location: LocationList().locations[1]),
                  SizedBox(width: 15),
                  PlaceCard(location: LocationList().locations[2]),
                  SizedBox(width: 15),
                  PlaceCard(location: LocationList().locations[3]),
                ],
              ))),
      SizedBox(height: 4),
      SectionTitle(
        mainTitle: 'Our Top Travelers',
        secondaryTitle: 'View More',
      ),
      Container(
        height: 100,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          boxShadow: [new BoxShadow(color: Colors.black26, blurRadius: 10)],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipOval(
              child: Image.asset('assets/images/user1.png',
                  height: 80, width: 80, fit: BoxFit.cover),
            ),
            ClipOval(
              child: Image.asset('assets/images/user2.png',
                  height: 80, width: 80, fit: BoxFit.cover),
            ),
            ClipOval(
              child: Image.asset('assets/images/user3.png',
                  height: 80, width: 80, fit: BoxFit.cover),
            ),
            ClipOval(
              child: Image.asset('assets/images/user4.png',
                  height: 80, width: 80, fit: BoxFit.cover),
            ),
          ],
        ),
      )
    ]);
  }
}
