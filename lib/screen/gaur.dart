import 'package:flutter/material.dart';
import 'package:nepal_bus/screen/newscreen.dart';
import 'package:nepal_bus/seat/seat.dart';

class gaur extends StatefulWidget {
  const gaur({Key? key}) : super(key: key);

  @override
  State<gaur> createState() => _gaurState();
}

class _gaurState extends State<gaur> {
  //////////////////////////////////////////////////////
  bus(String busname) => Material(
        color: Colors.black,
        elevation: 8,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => seat(busname)));
              },
              splashColor: Colors.red,
              child: Ink.image(
                padding: EdgeInsets.all(20),
                image: AssetImage(
                  'imag/$busname.jpg',
                ),
                height: 130,
                width: 130,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                ),
              ),
            ),
            Text("  $busname",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    backgroundColor: Colors.black,
                    fontWeight: FontWeight.bold))
          ],
        ),
      );

////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => newscreen()));
            }),
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(width: 30),
                bus("BAJRANGI"),
                SizedBox(width: 40),
                bus("JAIHO"),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 30),
                bus("RADHE"),
                SizedBox(width: 40),
                bus("RUDRA"),
              ],
            ),
          ],
        )));
  }
}
