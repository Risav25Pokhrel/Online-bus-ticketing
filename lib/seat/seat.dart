import 'dart:math';
import 'package:flutter/material.dart';
import 'package:nepal_bus/seat/datepicking.dart';

class seat extends StatelessWidget {
  final String bus_name;
  seat(this.bus_name);
  //const seat({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> a = [];
    List<int> b = [];
    int ano, c, bno;
    var random = new Random();
    ano = random.nextInt(16);
    for (var i = 0; i < ano; i++) {
      c = random.nextInt(15) + 1;
      a.add(c);
    }
    bno = random.nextInt(16);
    for (var i = 0; i < bno; i++) {
      c = random.nextInt(15) + 1;
      b.add(c);
    }
    /*********************************************/
   

    structure(String A) => Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.chair, size: 7),
            label: Text("$A",
                style: TextStyle(color: Colors.white, fontSize: 8))));
    /*********************************************/
    structurefull(String A) => Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => datepicking()));
            },
            icon: Icon(
              Icons.chair,
              size: 12,
              color: Colors.red,
            ),
            label: Text("$A",
                style: TextStyle(
                    color: Colors.red, fontWeight: FontWeight.bold))));
    /**************************************************/
     check(var A) {
      if (A) structure("$A");
    }
    final open1 = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(width: 20),
                structurefull("CABIN"),
                SizedBox(
                  width: 130,
                ),
                Image.asset(
                  "imag/ster.png",
                  height: 75,
                  width: 75,
                )
              ],
            ),
            Text(
              "                                               DRIVER",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "DOOR---->                                                                 ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "A                                                       B",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            for (var j = 0; j < 8; j++)
              Column(children: [
                SizedBox(height: 12),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    structure("A${2 * j + 1}"),
                    SizedBox(
                      width: 3,
                    ),
                    structure("A${2 * (j + 1)}"),
                    SizedBox(
                      width: 90,
                    ),
                    structure("B${2 * j + 1}"),
                    SizedBox(
                      width: 3,
                    ),
                    structure("B${2 * (j + 1)}"),
                  ],
                )
              ])
          ],
        ),
      ),
    );
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("$bus_name")),
        body: SingleChildScrollView(
            child: Column(
          children: [
            open1,
          ],
        )));
  }
}
