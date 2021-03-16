import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  final String title;
  final String subtitle;
  DayCard({@required this.title, @required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      subtitle: Text(subtitle),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
      ),
      contentPadding: EdgeInsets.only(left:30),
    );
  }
}
