import 'package:flutter/material.dart';
import 'package:job_portal/models/category_job_class.dart';

class CategoryJobRec extends StatelessWidget {
  List<Job> jobList = JobList().jobList;
  static const routeName = '/category-job-recommend';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color:Colors.black
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Design',
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
                  child: ClipOval(child:Image.asset('assets/images/james.png')),
                  )
            ])
          ],
        ),
        body: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 255, 0.02)),
            child: ListView.builder(
                itemCount: jobList.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 1,
                                blurRadius: 200)
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Row(children: [
                            Container(
                                margin: EdgeInsets.only(right: 15),
                                child: jobList[index].icon),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(jobList[index].name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                SizedBox(height: 4),
                                Text(
                                  jobList[index].company,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38),
                                )
                              ],
                            )
                          ]),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: jobList[index].color),
                            padding: EdgeInsets.fromLTRB(10, 15, 15, 15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: 25),
                                    Icon(Icons.location_on,
                                        color: Colors.black26),
                                    SizedBox(width: 10),
                                    Text(jobList[index].location,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54))
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    SizedBox(width: 25),
                                    Icon(Icons.edit, color: Colors.black26),
                                    SizedBox(width: 10),
                                    Text(
                                      jobList[index].skillSet,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ));
                })));
  }
}
