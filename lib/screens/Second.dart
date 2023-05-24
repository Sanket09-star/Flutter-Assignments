import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/routes_2.dart';

class MyClass21 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Routes_1());
  }
}

class Routes_1 extends State<MyClass21> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Center(
        child: Builder(
          builder: (context) {
            return (ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                child: Text("Previous")));
          },
        ),
      ),
    ));
  }
}
