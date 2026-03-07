import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appy/stateful_screen.dart';

import 'gridView2.dart';
import 'licensecheck.dart';
import 'loginAccount.dart';

class Bottomnavigationscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Bottomnavigationscreen();
}
class _Bottomnavigationscreen extends State<Bottomnavigationscreen> {

  List screens =[
    SecondScreen(),Licensecheck(),LoginAccount(), Gridview2()
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items:[
        BottomNavigationBarItem(icon: Icon(Icons.eleven_mp_sharp),
        label: "Home Screen"),
        BottomNavigationBarItem(icon: Icon(Icons.person_2_rounded),
        label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
        label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),
        label: "notifications"),
      ],
        currentIndex: selectedIndex,
        onTap: (index){
            setState(() {
              selectedIndex=index;
            });
        },
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.cyanAccent,
        unselectedItemColor: Colors.lightBlue,

    )
    );
  }
}