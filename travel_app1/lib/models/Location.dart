import 'package:flutter/material.dart';

class Location
{
  String imageUrl;
  String placeName;
  int visitorsNumber;

  Location({this.imageUrl, this.placeName, this.visitorsNumber});
}

class LocationList
{
  List<Location>  _locationList = [
    Location(imageUrl: 'assets/images/home_bg.png', placeName: 'Ranchi', visitorsNumber: 4),
    Location(imageUrl: 'assets/images/appbar.png', placeName:'Nagaland', visitorsNumber: 4),
    Location(imageUrl: 'assets/images/home_bg.png', placeName: 'Shimla', visitorsNumber: 4),
    Location(imageUrl: 'assets/images/appbar.png', placeName: 'Kiriburu', visitorsNumber: 4),
  ];

  List<Location> get locations{
    return _locationList;
  }
}