import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/demoButton.dart';

class MyClass6 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyClass6> {
  double v = 10, v1 = 10, v2 = 10;
  int x = 0, x1 = 0, x2 = 0;
  Color c = Color.fromARGB(255, 47, 203, 223);
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
                    c = Color.fromARGB(255, v.toInt(), v1.toInt(), v2.toInt());
                  });
                },
              ),
            ),
            Text("Selected value is $x"),
            Padding(
              padding: EdgeInsets.all(10),
              child: Slider(
                min: 1,
                max: 255,
                value: v1,
                onChanged: (value) {
                  setState(() {
                    v1 = value;
                    x1 = value.toInt();
                    c = Color.fromARGB(255, v.toInt(), v1.toInt(), v2.toInt());
                  });
                },
              ),
            ),
            Text("Selected value is $x1"),
            Padding(
              padding: EdgeInsets.all(10),
              child: Slider(
                min: 1,
                max: 255,
                value: v2,
                onChanged: (value) {
                  setState(() {
                    v2 = value;
                    x2 = value.toInt();
                    c = Color.fromARGB(255, v.toInt(), v1.toInt(), v2.toInt());
                  });
                },
              ),
            ),
            Text("Selected value is $x2"),
          ],
        ),
        appBar: AppBar(title: Text("Color Selector")),
      ),
    ));
  }
}
