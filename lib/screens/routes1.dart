import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/routes_2.dart';

class MyClass13 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Routes_1());
  }
}

class Routes_1 extends State<MyClass13> {
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
                        MaterialPageRoute(builder: (context) => MyClass19()));
                  },
                  child: Text("Next")));
            },
          ),
        ),
      ),
    ));
  }
}
