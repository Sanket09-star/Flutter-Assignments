import 'package:flutter/material.dart';

class MyClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyClass> {
  Color c = Colors.black;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text(
              "Result Here :-",
              style: TextStyle(backgroundColor: c),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    c = Colors.red;
                  });
                },
                child: Text("Red")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    c = Colors.green;
                  });
                },
                child: Text("Green"))
          ],
        ),
        appBar: AppBar(title: Text("Demo Button")),
      ),
    ));
  }
}
