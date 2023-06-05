import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyClass42 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyClass42> {
  @override
  Widget build(BuildContext context) {
    return (DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(children: [
            Center(
              child: Text("TabBarView 1"),
            ),
            Center(
              child: Text("TabBarView 2"),
            ),
            Center(
              child: Text("TabBarView 3"),
            )
          ]),
          appBar: AppBar(
            bottom: AppBar(
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.access_time_filled_sharp),
                ),
                Tab(
                  icon: Icon(Icons.access_time_filled_sharp),
                ),
                Tab(
                  icon: Icon(Icons.access_time_filled_sharp),
                )
              ]),
              title: Text("Demo Tab"),
            ),
          ),
        )));
  }
}
