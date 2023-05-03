import 'package:flutter/material.dart';

class MyWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(80),
          height: 200,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.greenAccent),
          alignment: Alignment.center,
          child: Text("First Name", style: TextStyle(fontSize: 25)),
        ),
        appBar: AppBar(
          title: Text("This is title"),
        ),
      ),
    ));
    throw UnimplementedError();
  }
}
