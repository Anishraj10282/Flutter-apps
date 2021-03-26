import 'package:flutter/material.dart';
import 'package:job_portal/bottomNavigation.dart';
import 'package:job_portal/category_card.dart';

import './models/categories.dart';

class CategoriesScreen extends StatelessWidget {
  List<Categories> _categoriesList = CategoryList().categoryList;
  static const routeName = '/categories-screen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color:Colors.black
          ),
          title: Text(
            'Categories',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          actions: [
            Row(children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'GR',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(right: 10, top:3, bottom:3),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.black)),
                  child: ClipOval(child:Image.asset('assets/images/james.png'),))
            ])
          ],
        ),
        body: Container(
          color: Color.fromRGBO(0, 0, 255, 0.05),
          child: GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext ctx, int index) {
              return CategoryCard(_categoriesList[index]);
            },
          ),
        ),
        bottomNavigationBar: BottomNavigation(
          activeIndex: 1,
        ));
  }
}
