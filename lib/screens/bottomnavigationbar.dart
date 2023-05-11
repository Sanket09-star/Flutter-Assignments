import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyClass9 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (NavigationBar1());
  }
}

class NavigationBar1 extends State<MyClass9> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm), label: "OK"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Cancel")
          ],
          onTap: (value) {
            String s1 = "";
            if (value == 0) {
              s1 == "ok";
            } else if (value == 1) {
              s1 = "Cancel";
            }
            Fluttertoast.showToast(
                msg: "You Clicked on ${s1}",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          },
        ),
      ),
    ));
  }
}
