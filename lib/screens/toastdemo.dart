import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyClass7 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyToast());
  }
}

class MyToast extends State<MyClass7> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "Clicked first button",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                icon: Icon(Icons.accessibility)),
            IconButton(onPressed: null, icon: Icon(Icons.alarm))
          ],
          leading: Icon(Icons.menu),
          centerTitle: true,
          title: Text("Appbar Demo"),
        ),
      ),
    ));
  }
}
