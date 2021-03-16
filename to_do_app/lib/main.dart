import 'package:flutter/material.dart';
import 'package:to_do_app/to_do_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do App',
      home: SafeArea(child:WelcomeScreen()),
      routes: {
        MyHomePage.routeName: (ctx)=>MyHomePage(),
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Image.asset('assets/images/background.jpg')),
          SizedBox(height:20),
          Text('Track Your Activities',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color:Colors.black87)),
          SizedBox(height: 10),
          Text('Accomplish your goals.'),
          SizedBox(height: 2),
          Text('Test yourself and boost your routine.'),
          SizedBox(height: 30),
          InkWell(
            onTap: (){
              Navigator.of(context).pushReplacementNamed(MyHomePage.routeName);
            },
            child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                padding: EdgeInsets.fromLTRB(30,10,10,10),
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(spreadRadius: 3, blurRadius: 20, color: Colors.black26)],
                    color: Color.fromRGBO(0, 0, 255, 0.85),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text(
                        'Lets Go',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                      Padding(
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        padding: EdgeInsets.only(left: 10),
                      )
                    ]))),
          )
        ],
      ),
    );
  }
}
