import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/app_bar.dart';
import 'package:to_do_app/to_do_card.dart';

class MyHomePage extends StatefulWidget {

  static const routeName = './myHomePage';
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage>
{

  TimeOfDay picked;
  TimeOfDay time;

  @override
  void initState()
  {
    super.initState();
    time = TimeOfDay.now();
  }

  Future<void> timePicker(BuildContext context) async{
    picked =   await showTimePicker(context: context, initialTime: time);

    if(picked!=null)
    {
      setState(){
        time = picked;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 1, blurRadius: 20, color: Colors.black54)
                  ]),
              padding: EdgeInsets.fromLTRB(15, 15, 15, 8),
              child: Column(children: [
                TopBar(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 5, top: 10),
                            child: Text('Your Progress',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.w600))),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'Today',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.edit_outlined, color: Colors.black54)
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, right: 5),
                      child: Text(
                        '4/10',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 255, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 10),
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 10),
                      height: 5,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 0, 255, 1),
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width * 0.35,
                    )
                  ],
                )
              ])),
          Expanded(
              child: ListView(children: [
            ToDoCard(
                title: 'Walk The Dog',
                time: '15:00 - 15:30',
                color: Colors.orange,
                icon: false),
            ToDoCard(
                title: 'Exercise',
                time: '15:30 - 16:00',
                color: Colors.green,
                icon: false),
            ToDoCard(
                title: 'Illustrator',
                time: '16:00 - 17:00',
                color: Colors.purple,
                icon: true),
            ToDoCard(
                icon: false,
                title: 'Cricket',
                time: '17:00 - 18:30',
                color: Colors.blue),
            ToDoCard(
                icon: true,
                title: 'Study',
                time: '18:30 - 20:00',
                color: Colors.brown),
            ToDoCard(
                icon: true,
                title: 'Cooking',
                time: '20:00 - 21:00',
                color: Colors.deepOrange),
            ToDoCard(
                icon: false,
                title: 'Dinner',
                time: '21:00 - 21:30',
                color: Colors.indigo),
            ToDoCard(
                icon: true,
                title: 'Walk the Dog',
                time: '21:30 - 22:00',
                color: Colors.red),
            ToDoCard(
                icon: false,
                title: 'Book Reading',
                time: '22:00 - 23:00',
                color: Colors.purple),
            ToDoCard(
                icon: false,
                title: 'Meditate',
                time: '23:00 - 23:30',
                color: Colors.greenAccent),
          ]))
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        child: Icon(Icons.add,size: 40,),
        backgroundColor: Color.fromRGBO(0, 0, 255, 1),
        onPressed: () {
          showModalBottomSheet(context: context, builder: (_)
          {
            return Column(children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Task Name:",
                ),
              ),
              IconButton(icon:Icon(Icons.alarm, size: 40 ,), onPressed: (){
                timePicker(context);
                print(time);
              },),
              Text('Time-:${time.hour}:${time.minute}')
            ]);
          });
        }
      ),
    );
  }
}
