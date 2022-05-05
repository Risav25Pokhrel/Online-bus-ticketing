import 'package:flutter/material.dart';
import 'package:nepal_bus/screen/loginpage.dart';

class contactus extends StatelessWidget {
  const contactus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CONTACT US",
          style: mystyle,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Text(
            "CONTACT DETAILS",
            style: mystyle,
          ),
          Text("_______________________________", style: mystyle),
          const SizedBox(height: 20),
          const Center(child: Text("PHONE NO.: 9823218807               ")),
          const Center(child: Text("Email: pokhrelrisav07@gmail.com")),
        ],
      ),
    );
  }
}
