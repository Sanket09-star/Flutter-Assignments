import 'package:flutter/material.dart';

class MyClass5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyClass5> {
  double v = 10;
  int x = 0;
  Color c = Color.fromARGB(255, 167, 167, 62);
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: c,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Slider(
                min: 1,
                max: 255,
                value: v,
                onChanged: (value) {
                  setState(() {
                    v = value;
                    x = value.toInt();
                  });
                },
              ),
            ),
            Text("Selected value is $x"),
          ],
        ),
        appBar: AppBar(title: Text("slider Demo")),
      ),
    ));
  }
}
