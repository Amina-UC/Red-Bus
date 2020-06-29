import 'package:flutter/material.dart';

class MyBookings extends StatefulWidget {
  @override
  _MyBookingsState createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.teal,
      title: Text("Bookings")
      ,
    ),
      body: Center(
        child: Text("Booking page"),
      ),);
  }
}
