import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/demoButton.dart';

class MyClass1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyClass1> {
  String fname = "";
  var t1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: t1,
                decoration: InputDecoration(
                    labelText: "Enter Name", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      fname = t1.text;
                    });
                  },
                  child: Text("Ok!")),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("Hello $fname !"),
            )
          ],
        ),
        appBar: AppBar(
          title: Text("Demo Button"),
        ),
      ),
    ));
  }
}
