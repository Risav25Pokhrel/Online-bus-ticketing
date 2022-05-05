import "package:flutter/material.dart";
import 'package:nepal_bus/screen/loginpage.dart';

class datepicking extends StatefulWidget {
  const datepicking({Key? key}) : super(key: key);

  @override
  State<datepicking> createState() => _datepickingState();
}

class _datepickingState extends State<datepicking> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: null,
        ),
        body: Row(
          children: [
            SizedBox(height: 5),
            SizedBox(
              width: 10,
            ),
            Text(
              "DEPARTURE DATE:-",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(padding: EdgeInsets.all(5)),
            ElevatedButton.icon(
              onPressed: () async {
                DateTime? newdate = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(2022),
                    lastDate: DateTime(2023));
                if (newdate == null) return;
                setState(() {
                  date = newdate;
                });
              },
              icon: Icon(Icons.calendar_month),
              label: Text(
                "${date.year}/${date.month}/${date.day}",
                style: TextStyle(
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Text(
              "OK",
              style: mystyle,
            ),
            onPressed: (() {})));
  }
}
