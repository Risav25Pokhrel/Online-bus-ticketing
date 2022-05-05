import 'package:flutter/material.dart';
import 'package:nepal_bus/screen/newscreen.dart';
TextStyle mystyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String username = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    final usernamefield = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: mystyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 10),
        hintText: "     USERNAME",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );

    final passwordfield = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      style: mystyle,
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 10),
        hintText: "      PASSWORD",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );

    final loginbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: Colors.blue,
      child: MaterialButton(
        splashColor: Colors.black,
        padding: EdgeInsets.all(20),
        onPressed: () {
          if (username == "" && password == "") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => newscreen()));
          } else {
            print(
                "LOGIN FAILED\n ~~~THIS PASSWORD IS ALREADY USED BY PRAJWAL~~~");
          }
        },
        child: Center(
            child: Text(
          "LOGIN",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "WELCOME TO NEPAL BUS SERVICE",
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
          child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Row(
                      children: [
                        Center(
                          child: Image.asset(
                            "imag/4.gif",
                            height: 150,
                            width: 150,
                          ),
                        ),
                        Image.asset(
                          "imag/1.png",
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  usernamefield,
                  SizedBox(
                    height: 10,
                  ),
                  passwordfield,
                  SizedBox(height: 20),
                  loginbutton,
                  SizedBox(height: 10),
                  Text(
                    "SIGNUP",
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                  SizedBox(height: 95),
                  Text(
                    "FORGET PASSWORD",
                    style: (TextStyle(fontSize: 10, color: Colors.red)),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
