import 'package:flutter/material.dart';
import 'package:job_portal/categories_screen.dart';
import 'package:job_portal/main.dart';

class BottomNavigation extends StatelessWidget {
  final int activeIndex;
  BottomNavigation({@required this.activeIndex});



  @override
  Widget build(BuildContext context) {
    void _tapped(index)
    {
      print('2');
      if(index==1) {Navigator.pushReplacementNamed(context, CategoriesScreen.routeName);}
      if(index==0) {Navigator.pushReplacementNamed(context, MainApp.routeName);}
    }
    return BottomNavigationBar(
        elevation: 10,
        currentIndex: activeIndex,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black38,
        selectedItemColor: Color.fromRGBO(0, 0, 255, 1),
        onTap: _tapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ]);
  }
}
