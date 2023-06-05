import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyClass40 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (login());
  }
}

class login extends State<MyClass40> {
  TextEditingController t1 = new TextEditingController();
  TextEditingController t2 = new TextEditingController();

  get user_name => t1.text;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                child: CircleAvatar(
                  radius: 207,
                  backgroundImage: AssetImage("assets/images/ani1.jpeg"),
                ),
                radius: 80,
                backgroundColor: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
              child: TextField(
                controller: t1,
                decoration: InputDecoration(
                    labelText: "Username", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
              child: TextField(
                obscureText: true,
                controller: t2,
                decoration: InputDecoration(
                    labelText: "Password", border: OutlineInputBorder()),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "Welcome ${user_name}",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.white54,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    child: Text("Login"))),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
        ),
        backgroundColor: Color.fromARGB(255, 240, 242, 244),
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: Text("Demo Login Page"),
        ),
      )),
    );
  }
}
