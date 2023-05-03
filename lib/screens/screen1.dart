import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "Hello world",
            style: TextStyle(fontSize: 50, color: Colors.amber),
          ),
        ),
        appBar: AppBar(
          title: Text("This is title"),
        ),
      ),
    ));
  }
}
