import 'package:flutter/material.dart';
import 'package:nepal_bus/screen/newscreen.dart';
import 'package:nepal_bus/seat/seat.dart';

class biratnagar extends StatefulWidget {
  const biratnagar({Key? key}) : super(key: key);

  @override
  State<biratnagar> createState() => _biratnagarState();
}

class _biratnagarState extends State<biratnagar> {
  //////////////////////////////////////////////////////
  bus(String busname) => Material(
        color: Colors.black,
        elevation: 8,
        borderRadius: BorderRadius.circular(10),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => seat(busname)));
              },
              splashColor: Colors.red,
              child: Ink.image(
                padding: EdgeInsets.symmetric(),
                image: AssetImage('imag/$busname.jpg'),
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
                SizedBox(width: 20),
                bus("KAVYA"),
                SizedBox(width: 40),
                bus("S&S"),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                bus("MAKALU"),
                SizedBox(width: 40),
                bus("BULLET"),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 30),
                bus("SAJILO"),
                SizedBox(width: 40),
                bus("SAMSUNG"),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 30),
                bus("AGNI"),
                SizedBox(width: 40),
                bus("BASUKI"),
              ],
            ),
          ],
        )));
  }
}
