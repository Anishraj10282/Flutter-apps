import 'package:flutter/material.dart';
import './main_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travel App',
        home: SafeArea(child:Scaffold(
          extendBodyBehindAppBar: true,
          appBar: MyAppBar(),
          body: SingleChildScrollView(child: buildBody()),
          bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color:Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(30), topRight:Radius.circular(30)),
              boxShadow: [new BoxShadow(color: Colors.black26, blurRadius: 20)]),
              padding: EdgeInsets.all(10),
              child: SafeArea(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.email_rounded , size:33, color: Colors.black87,),
                  Icon(Icons.card_travel_outlined,size:33, color:Colors.black87),
                  Icon(Icons.calendar_today_rounded,size:33, color:Colors.black87),
                ],
              ))),
        )));
  }
}

AppBar MyAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.menu),
    ),
    actions: [
      IconButton(
          icon: ClipOval(child: Image.asset('assets/images/user3.png')),
          onPressed: null)
    ],
  );
}
