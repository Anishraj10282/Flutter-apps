import 'package:flutter/material.dart';
import './models/Location.dart';

class PlaceCard extends StatelessWidget
{
  final Location location;
  PlaceCard({this.location});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ClipRRect(
            child: Image.asset(
              location.imageUrl,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20)),
          ),
          width: 150,
          height: 150,
        ),
        Container(
          width: 150,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                new BoxShadow(
                    color: Colors.black26, blurRadius: 10.0)
              ]),
          child: Center(child:Text(location.placeName)),
        ),
      ],
    );
  }
}