import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  final String username1;
  homescreen(this.username1);
  //const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: 
        Text(
          "NEPAL BUS BOOKING ",
          style: TextStyle(
              color: Colors.black,
              decorationColor: Colors.yellow,
              fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: const DrawerHeader(
                decoration: BoxDecoration(color: Colors.yellow),
                child: Center(
                  child: Text(
                    "WELCOME ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.ads_click_rounded),
              title: const Text(
                'FESTIVAL OFFERS',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                print("prajwal handsome");
              },
            ),
            ListTile(
              leading: Icon(Icons.ads_click_rounded),
              title: const Text(
                'ONLINE PAYEMENT',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                print("PRAVESH HANDSOME");
              },
            ),
            ListTile(
              leading: Icon(Icons.ads_click_rounded),
              title: const Text(
                'CONTACT US',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                print("YOU HAVE TRAVELLED 8 TIMES");
              },
            ),
            ListTile(
              leading: Icon(Icons.ads_click_rounded),
              title: const Text(
                'COMPLAIN',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                print("no complain registered");
              },
            ),
            ListTile(
              leading: Icon(Icons.ads_click_rounded),
              title: const Text(
                'LOG OUT',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                print("ARE YOU SURE TO LOG OUT");
              },
            ),
          ],
        ),
      ),
     //body: Column(
        //children: [
          /*Center(child: Image.asset("imag/2.png")),
          SizedBox(
            height: 1,
          ),
          Image.asset(
            "imag/3.png",
            height: 405,
            width: 1000,
          ),
        ],
      ),*/
    );
  }
}
