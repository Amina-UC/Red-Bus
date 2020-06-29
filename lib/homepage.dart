import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Bus Tickets",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.network("https://www.pngrepo.com/png/113626/180/bus-front.png",color: Colors.white,),
              ),
            ],elevation: 0,
        ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(color: Colors.teal,
              height: MediaQuery.of(context).size.height/2.1,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              onTap: () async {
                                Prediction p = await PlacesAutocomplete.show(context: context, apiKey: "AIzaSyABBH07rVnsmRDsmIjtpfHiBuwczmyVyLk",
                                language: "IN",
                                components: [
                                  Component(Component.country, "IN")
                                ]);
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.directions_bus,color: Colors.black,),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black
                                  )
                                ),
                                hintText: "ENTER SOURCE",
                                hintStyle: TextStyle(color: Colors.grey)
                              ),
                            ),
                            SizedBox(height: 10,),
                            TextFormField(
                              decoration: InputDecoration(
                                  icon: Icon(Icons.directions_bus,color: Colors.black,),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black)
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black
                                      )
                                  ),
                                  hintText: "ENTER DESTINATION",
                                  hintStyle: TextStyle(color: Colors.grey)
                              ),
                            ),
                            SizedBox(height: 10,),
                            TextFormField(
                              decoration: InputDecoration(
                                  icon: Icon(Icons.calendar_today,color: Colors.black,),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black)
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black
                                      )
                                  ),
                                  hintText: "Sun,28,June",
                                  hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
                              ),
                            ),
                            SizedBox(height: 18,),
                            Container(alignment: Alignment.center,
                              height: 45,
                              width: 220,
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Text("SEARCH",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("YOU CAN ALSO BOOK",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(height: 90,width: 110,
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Icon(Icons.departure_board,size: 45,color: Colors.teal,),
                        ),
                        Text("Bus Hire",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)
                      ],
                    )
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(height: 90,width: 110,
                    child: Card(
                        elevation: 4,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Icon(Icons.pages,size: 45,color: Colors.teal,),
                            ),
                            Text("Package",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)
                          ],
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(height: 90,width: 110,
                    child: Card(
                        elevation: 4,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Icon(Icons.directions_car,size: 45,color: Colors.teal,),
                            ),
                            Text("rPool",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)
                          ],
                        )
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 40,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 198,
                    width: 270,
                    child: Card(child: Image.asset("assets/images/s.jpg"),),
                  ),
                  Container(
                    height: 198,
                    width: 270,
                    child: Card(child: Image.asset("assets/images/s1.jpg"),),
                  ),
                  Container(
                    height: 198,
                    width: 270,
                    child: Card(child: Image.asset("assets/images/s2.jpg"),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
