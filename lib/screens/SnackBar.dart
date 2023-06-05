import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyClass41 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyClass41> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("This is Snackbar")));
            },
            child: Text("Show SnackBar")),
      ),
      appBar: AppBar(
        title: Text("Demo SnackBar"),
      ),
    ));
  }
}
