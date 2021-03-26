import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:job_portal/bottomNavigation.dart';
import 'package:job_portal/categories_screen.dart';
import 'package:job_portal/category_job_recommend.dart';
import 'package:job_portal/job_card-type1.dart';

import './models/recommended_jobs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Portal',
      home: MainApp(),
      routes: {
        MainApp.routeName:(ctx)=>MainApp(),
          CategoriesScreen.routeName:(ctx) => CategoriesScreen(),
          CategoryJobRec.routeName:(ctx) => CategoryJobRec(),
      },
    );
  }
}

class MainApp extends StatelessWidget {
  final RecommendList _recommendList = RecommendList();
  static const routeName = '/main-app';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          Card(
            margin: EdgeInsets.all(0),
            elevation: 2,
            child: Container(
              padding: EdgeInsets.only(top: 40),
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(color: Colors.white),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(color:Colors.black38), borderRadius: BorderRadius.circular(60)),
                      padding: EdgeInsets.all(3),
                      child: ClipOval(
                        child: Image.asset('assets/images/james.png'),
                      )),
                  SizedBox(height: 5),
                  Container(
                      child: Column(children: [
                    Text(
                      'Gowtham Raj',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Text(
                      'UI/UX Designer',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                  ])),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Profile Completeness',
                                style: TextStyle(color: Colors.black38),
                              ),
                              Text('70%',
                                  style: TextStyle(color: Colors.black54))
                            ]),
                        SizedBox(height: 5),
                        Container(
                          margin: EdgeInsets.only(bottom: 0),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(20)),
                                height: 4,
                                width: MediaQuery.of(context).size.width * 0.9,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.circular(20)),
                                height: 4,
                                width: MediaQuery.of(context).size.width * 0.65,
                              ),
                            ],
                          ),
                        )
                      ])),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
                  color: Color.fromRGBO(0, 0, 255, 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.all(15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Recommended Jobs',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                InkWell(child:Text('SEE ALL',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Colors.blue)),
                                onTap:()=>{
                                  Navigator.pushNamed(context, CategoryJobRec.routeName)
                                }),
                              ])),
                      Container(
                          height: 300,
                          child: ListView.builder(
                            itemBuilder: (BuildContext ctx, int index) {
                              return JobCardType1(
                                  _recommendList.recommendList[index]);
                            },
                            scrollDirection: Axis.horizontal,
                            itemCount: _recommendList.recommendList.length,
                          )),
                      Container(
                          padding: EdgeInsets.all(12),
                          child: Text('Recent Activities',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold))),
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.41,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 50)
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      255, 0, 0, 0.1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              padding: EdgeInsets.all(7),
                                              child: Icon(Icons.bookmark,
                                                  color: Colors.pinkAccent)),
                                          Column(
                                            children: [
                                              Text(
                                                '49',
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'Saved Jobs',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black38),
                                              )
                                            ],
                                          ),
                                        ])),
                                Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.41,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 50)
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      0, 255, 0, 0.1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              padding: EdgeInsets.all(7),
                                              child: Icon(
                                                Icons.check_rounded,
                                                color: Colors.green,
                                              )),
                                          Column(
                                            children: [
                                              Text(
                                                '124',
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'Applied',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black38),
                                              )
                                            ],
                                          ),
                                        ])),
                              ]))
                    ],
                  ))),
        ]),
        bottomNavigationBar: BottomNavigation(activeIndex: 0));
  }
}
