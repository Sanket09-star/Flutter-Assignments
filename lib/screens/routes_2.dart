import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/routes1.dart';

class MyClass19 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Routes_2());
  }
}

class Routes_2 extends State<MyClass19> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Center(
          child: Builder(
            builder: (context) {
              return (ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyClass13()));
                  },
                  child: Text("Previous")));
            },
          ),
        ),
      ),
    ));
  }
}
