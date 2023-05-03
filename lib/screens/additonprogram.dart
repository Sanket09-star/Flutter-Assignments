import 'package:flutter/material.dart';

class MyClass4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyClass4> {
  String fname = "";
  var t1 = TextEditingController();
  var t2 = TextEditingController();
  var t3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: t1,
                decoration: InputDecoration(
                    labelText: "Enter Num", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: t2,
                decoration: InputDecoration(
                    labelText: "Enter Num", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: t3,
                decoration: InputDecoration(
                    labelText: "Additon", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var a = int.parse(t1.text);
                      var b = int.parse(t2.text);
                      var c = a + b;
                      t3.text = c.toString();
                    });
                  },
                  child: Text("ADD")),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var a = 0;
                      var b = 0;
                      var c = 0;
                      t3.text = c.toString();
                      t2.text = b.toString();
                      t1.text = a.toString();
                    });
                  },
                  child: Text("Clear")),
            ),
          ],
        ),
        appBar: AppBar(title: Text("Demo additon")),
      ),
    ));
    throw UnimplementedError();
  }
}
