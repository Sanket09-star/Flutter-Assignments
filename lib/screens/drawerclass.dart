import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

class MyClass10 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (DrawerClass1());
  }
}

class DrawerClass1 extends State<MyClass10> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        drawer: Builder(
          builder: (context) {
            return (ListView(
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "User Information",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    )),
                ListTile(
                  title: Text("Option 1"),
                  leading: Icon(Icons.access_alarm),
                  onTap: () {
                    Fluttertoast.showToast(
                        msg: "Option 1",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                    Navigator.pop(context);
                  },
                )
              ],
            ));
          },
        ),
      ),
    ));
  }
}
