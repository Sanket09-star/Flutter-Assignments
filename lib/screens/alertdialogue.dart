import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyClass8 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Alert());
  }
}

class Alert extends State<MyClass8> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return (ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return (AlertDialog(
                        actions: [
                          TextButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "You Clicked OK",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                              Navigator.pop(context);
                            },
                            child: Text("OK"),
                          ),
                          TextButton(
                              onPressed: () {
                                Fluttertoast.showToast(
                                    msg: "You Clicked Cancel",
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.BOTTOM,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                                Navigator.pop(context);
                              },
                              child: Text("Cancel")),
                        ],
                        title: Text("Do you want to exit"),
                      ));
                    },
                  );
                },
                child: Text("Exit")));
          },
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Alert Dialogue"),
        ),
      ),
    ));
  }
}
