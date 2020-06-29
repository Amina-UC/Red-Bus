import 'package:flutter/material.dart';
import 'package:redbus_home/help.dart';
import 'package:redbus_home/homepage.dart';
import 'package:redbus_home/my_bookings.dart';
import 'package:redbus_home/profile.dart';

class BottomTabs extends StatefulWidget {
  @override
  _BottomTabsState createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {

  int _currentindex = 0;
  final List<Widget> _children = [
    MyHomePage(),
    MyBookings(),
    HelpPage(),
    MyAccount()
  ];

  void onTappedBars(int index){
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBars,
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            title: Text("Home"),
            backgroundColor: Colors.teal
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.format_list_bulleted,),
              title: Text("My Bookings"),
              backgroundColor: Colors.teal
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.headset_mic,),
              title: Text("Help"),
              backgroundColor: Colors.teal
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,),
              title: Text("My Account"),
              backgroundColor: Colors.teal
          ),
        ],
      ),
    );
  }
}
