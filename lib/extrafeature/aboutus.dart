import 'package:flutter/material.dart';
import 'package:nepal_bus/screen/loginpage.dart';

class aboutus extends StatelessWidget {
  const aboutus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ABOUT US"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text("DEVELOPED BY:- RISAV POKHREL", style: mystyle),
            SizedBox(height: 10,),
             Text("PROJECT IDEA       :- RIJAN POKHREL",style: TextStyle(fontWeight: FontWeight.bold),),
            Text("DESIGN SUGGESTION BY:- PRAJWAL RIMAL"),
          ],
        ),
      ),
    );
  }
}
