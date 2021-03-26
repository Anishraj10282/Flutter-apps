import 'package:flutter/material.dart';
import './models/recommended_jobs.dart';

class JobCardType1 extends StatelessWidget {
  final Recommend recommend;
  JobCardType1(this.recommend);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(bottom: 20, top: 20, left: 20, right: 10),
        width: 250,
        height: 250,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color:Color.fromRGBO(0, 0, 0, 0.01), blurRadius: 150) ],
            borderRadius: BorderRadius.circular(20), color: recommend.color),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
              height:110,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    recommend.job,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(recommend.company, style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600, fontSize: 16)),
                  Text(
                    recommend.location,
                    style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
                  ),
                ],
              ),),
              Container(
                margin:EdgeInsets.only(left:120),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(255, 255, 255, 0.4),
                ),
                child: Text('Apply', style: TextStyle(color: Colors.white)),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              ),
            ]));
  }
}
