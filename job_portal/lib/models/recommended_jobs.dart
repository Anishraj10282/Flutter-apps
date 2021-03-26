import 'package:flutter/material.dart';

class Recommend {
  final String job;
  final String company;
  final String location;
  final Color color;

  Recommend(
      {@required this.color, @required this.location, @required this.company, @required this.job});
}

class RecommendList {
  List<Recommend> _recommendList = [
    Recommend(color: Colors.purple,
        location: 'Delhi',
        company: 'Microsoft Corp.',
        job: 'Senior UI/UX Designer'),
    Recommend(color: Colors.pinkAccent,
        location: 'Noida',
        company: 'Samsung',
        job: 'Graphic Designer'),
    Recommend(color: Color.fromRGBO(0, 255, 0, 0.45),
        location: 'Chennai',
        company: 'Google',
        job: 'Creative Director'),
    Recommend(color: Color.fromRGBO(0, 0, 255, 0.5),
        location: 'Mumbai',
        company: 'HP',
        job: 'Illustrating'),
  ];

  List<Recommend> get recommendList {
    return [..._recommendList];
  }

  int get listCount {
    return _recommendList.length;
  }
}