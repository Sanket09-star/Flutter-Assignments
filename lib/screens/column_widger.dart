import 'package:flutter/material.dart';

class MyWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            mainAxisSize: MainAxisSize.max,
            children: [Text("one"), Text("Two"), Text("Three")],
          ),
          appBar: AppBar(
            title: Text("This is title"),
          )),
    ));
    throw UnimplementedError();
  }
}
