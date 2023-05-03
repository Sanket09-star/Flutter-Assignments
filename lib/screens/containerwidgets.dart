import 'package:flutter/material.dart';

class MyWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(50),
          alignment: Alignment.topRight,
          width: 100,
          height: 100,
          color: Colors.amberAccent,
          child: Text("Conatiner Demo"),
        ),
        appBar: AppBar(
          title: Text("THis is title"),
        ),
      ),
    ));
    throw UnimplementedError();
  }
}
