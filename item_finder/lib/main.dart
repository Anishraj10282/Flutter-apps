import 'package:flutter/material.dart';

import './dummy_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Item Finder', home: MainApp());
  }
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  TextEditingController _textController = TextEditingController();

  List<Data> dataList = DataList().dataList;
  List<Data> newDataList = DataList().dataList;

  onItemChanged(String value) {
    setState(() {
      newDataList = dataList.where(
          (data) => data.name.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Item Finder'),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black38))),
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.only(left: 15),
              child: TextField(
                controller: _textController,
                onChanged:onItemChanged,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter here....'),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: newDataList.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return ListTile(
                        title: Text(newDataList[index].name),
                        subtitle: Text('Quantity : ' +
                            newDataList[index].quantity.toString()),
                        trailing:
                            Text('Price : ' + newDataList[index].price.toString()),
                      );
                    })),
          ],
        ));
  }
}
