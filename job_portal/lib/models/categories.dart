import 'package:flutter/material.dart';

class Categories
{
  final String name;
  final Icon icon;
  final String jobs;

  Categories({@required this.icon, @required this.jobs, @required this.name});
}

class CategoryList
{
  List<Categories> _categoryList  =[
    Categories(icon: Icon(Icons.design_services, size:60, color:Colors.blue), name: 'Design', jobs: '7000+ jobs'),
    Categories(icon: Icon(Icons.pie_chart, size:60, color:Colors.greenAccent), name: 'Marketing', jobs: '8000+ jobs'),
    Categories(icon: Icon(Icons.computer_outlined, size:60, color:Colors.deepOrange), name: 'IT', jobs: '6000+ jobs'),
    Categories(icon: Icon(Icons.engineering, size:60, color:Colors.blueGrey), name: 'Engineering', jobs: '9000+ jobs'),
    Categories(icon: Icon(Icons.medical_services, size:60, color:Colors.pinkAccent), name: 'Medical', jobs: '6000+ jobs'),
    Categories(icon: Icon(Icons.camera_alt, size:60, color:Colors.lightGreen), name: 'Photography', jobs: '7000+ jobs'),
    Categories(icon: Icon(Icons.precision_manufacturing_outlined, size:60, color:Colors.amber), name: 'Management', jobs: '8000+ jobs'),
    Categories(icon: Icon(Icons.book, size:60, color:Colors.purple), name: 'Lawyer', jobs: '9000+ jobs'),
  ];

  List<Categories> get categoryList
  {
    return [..._categoryList];
  }
}