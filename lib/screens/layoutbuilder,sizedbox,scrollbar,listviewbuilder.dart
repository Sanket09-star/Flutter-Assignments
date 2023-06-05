import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyClass43 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyClass43> {
  var mycontroller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: LayoutBuilder(
        builder: (p0, p1) {
          return (Row(
            children: [
              SizedBox(
                child: Scrollbar(
                  child: ListView.builder(
                    controller: mycontroller,
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return (Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Item $index"),
                      ));
                    },
                  ),
                  controller: mycontroller,
                  thumbVisibility: true,
                ),
                width: p1.maxWidth / 2,
              )
            ],
          ));
        },
      ),
      appBar: AppBar(title: Text("Scroll Demo")),
    ));
  }
}
