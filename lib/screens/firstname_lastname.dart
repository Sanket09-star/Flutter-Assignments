import 'package:flutter/material.dart';

class MyWidget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.all(50),
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, color: Colors.greenAccent),
                alignment: Alignment.center,
                child: Text("First Name", style: TextStyle(fontSize: 25))),
            Container(
                padding: EdgeInsets.all(50),
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, color: Colors.greenAccent),
                alignment: Alignment.center,
                child: Text("Last Name", style: TextStyle(fontSize: 25)))
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    ));
    throw UnimplementedError();
  }
}
