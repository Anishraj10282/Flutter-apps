import 'package:flutter/material.dart';
import 'package:travel_app1/main.dart';


class SectionTitle extends StatelessWidget
{
  final String mainTitle;
  final String secondaryTitle;

  SectionTitle({this.mainTitle, this.secondaryTitle});

  Widget build(BuildContext context)
  {
    return Container(
        padding:EdgeInsets.all(10),
        child: Row(
          children: [
            Text(mainTitle, style: TextStyle(color:Colors.black87, fontSize: 17, fontWeight: FontWeight.bold),),
            Spacer(),
            Text(secondaryTitle, style: TextStyle(color:Colors.black45),),
            Icon(Icons.arrow_right_rounded, color: Colors.black45,),
          ],
        ),
    );
  }
}