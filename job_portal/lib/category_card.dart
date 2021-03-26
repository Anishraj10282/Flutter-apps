import 'package:flutter/material.dart';
import 'package:job_portal/category_job_recommend.dart';
import './models/categories.dart';


class CategoryCard extends StatelessWidget {

  final Categories category;

  CategoryCard(this.category);

  @override
  Widget build(BuildContext context) {

    void _tapped(String name)
    {
      if(name=='Design') {
        Navigator.pushNamed(context, CategoryJobRec.routeName);
      }
    }

    return InkWell(child:Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 1)
          ]),
      padding: EdgeInsets.only(left: 8, top: 8, bottom: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          category.icon,
          Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 255, 0.05),
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    category.jobs,
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black26,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ))
        ],
      ),
    ),
    onTap:()=> _tapped(category.name),
    );
  }
}
