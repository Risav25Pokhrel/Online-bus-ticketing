import 'package:flutter/material.dart';
import 'package:nepal_bus/extrafeature/aboutus.dart';
import 'package:nepal_bus/extrafeature/contactus.dart';
import 'package:nepal_bus/screen/biratnagar.dart';
import 'package:nepal_bus/screen/birgunj.dart';
import 'package:nepal_bus/screen/dharan.dart';
import 'package:nepal_bus/screen/gaur.dart';
import 'package:nepal_bus/screen/kakadvitta.dart';
import 'package:nepal_bus/screen/loginpage.dart';
import 'package:nepal_bus/screen/rajbiraj.dart';
class newscreen extends StatefulWidget {
  const newscreen({Key? key}) : super(key: key);

  @override
  State<newscreen> createState() => _newscreenState();
}

class _newscreenState extends State<newscreen> {
  @override
  Widget build(BuildContext context) {
    busroute(String name) => Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.blue,
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20.0),
            onPressed: () {
              /*********************************************/
              if (name == "KTM TO KAKADVITTA") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => kakadvitta()));
                /*********************************************/
              } else if (name == "KTM TO DHARAN") {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => dharan()));
              }
              /*********************************************/
              else if (name == "KTM TO BIRATNAGAR") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => biratnagar()));
              }
              /*********************************************/
              else if (name == "KTM TO GAUR") {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => gaur()));
              }
              /*********************************************/
              else if (name == "KTM TO BIRGUNJ") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => birgunj()));
              }
              /*********************************************/
              else if (name == "KTM TO RAJBIRAJ") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => rajbiraj()));
              }
              /*********************************************/
            },
            child: Text(
              "$name",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        );


        
    return Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.search)],
          centerTitle: true,
          title: Text("SELECT THE ROUTE ", style: mystyle),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              Padding(padding: EdgeInsets.symmetric()),
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'imag/4.gif',
                        height: 90,
                        width: 90,
                      ),
                      Text(
                        "WELCOME TO NEPAL BUS SERVICE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              /*********************************************/
              ListTile(
                leading: Icon(Icons.festival),
                title: const Text(
                  'FESTIVAL OFFERS',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  print("prajwal handsome");
                },
              ),
              /*********************************************/
              ListTile(
                leading: Icon(Icons.payment),
                title: const Text(
                  'ONLINE PAYEMENT',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  print("prajwal handsome");
                },
              ),
              /*********************************************/
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: const Text(
                  'CONTACT US',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => contactus()));
                },
              ),
              /***********************************************/
              ListTile(
                leading: Icon(Icons.comment),
                title: const Text(
                  'COMPLAIN',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  print("prajwal handsome");
                },
              ),
              /*********************************************/
              ListTile(
                  leading: Icon(Icons.details),
                  title: const Text(
                    'ABOUT US',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => aboutus()));
                  }),
              /*********************************************/
              ListTile(
                leading: Icon(Icons.logout),
                title: const Text(
                  'LOG  OUT',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginpage()));
                },
              ),
              /*********************************************/
            ],
          ),
        ),
        body:
         SingleChildScrollView(
          child: Column(children: [
            Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      busroute("KTM TO KAKADVITTA"),
                      SizedBox(height: 10),
                      busroute("KTM TO BIRATNAGAR"),
                      SizedBox(height: 10),
                      busroute("KTM TO RAJBIRAJ"),
                      SizedBox(height: 10),
                      busroute("KTM TO BIRGUNJ"),
                      SizedBox(height: 10),
                      busroute("KTM TO DHARAN"),
                      SizedBox(height: 10),
                      busroute("KTM TO GAUR"),
                      SizedBox(height: 10),
                    ],
                  ),
                ))
          ]),
        ));
  }
}
