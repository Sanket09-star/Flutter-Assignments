import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyClass24 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (CardDemo());
  }
}

class CardDemo extends State<MyClass24> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Card(
              color: Colors.amber,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.alarm),
                    title: Text("Card1"),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Fluttertoast.showToast(
                              msg: "Add Button clicked",
                            );
                          },
                          child: Text("Add")),
                      ElevatedButton(
                          onPressed: () {
                            Fluttertoast.showToast(
                              msg: "Delete Button clicked",
                            );
                          },
                          child: Text("Delete"))
                    ],
                  )
                ],
              ),
            ),
            Card(
              color: Colors.amber,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.alarm),
                    title: Text("Card1"),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Fluttertoast.showToast(
                              msg: "Add Button clicked",
                            );
                          },
                          child: Text("ADD")),
                      ElevatedButton(
                          onPressed: () {
                            Fluttertoast.showToast(
                              msg: "Delete Button clicked",
                            );
                          },
                          child: Text("Delete"))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
