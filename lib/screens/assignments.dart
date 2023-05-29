import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyClass29 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Conversion());
  }
}

class Conversion extends State<MyClass29> {
  String? from = "meter";
  String? to = "cm";
  var result = 0.0;
  TextEditingController t1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Column(
            children: [
              TextField(
                controller: t1,
              ),
              DropdownButton(
                value: from,
                items: [
                  DropdownMenuItem(
                    child: Text("meter"),
                    value: "meter",
                  ),
                  DropdownMenuItem(
                    child: Text("feet"),
                    value: "feet",
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    from = value;
                  });
                },
              ),
              DropdownButton(
                value: to,
                items: [
                  DropdownMenuItem(
                    child: Text("cm"),
                    value: "cm",
                  ),
                  DropdownMenuItem(
                    child: Text("feet"),
                    value: "feet",
                  ),
                  DropdownMenuItem(
                    child: Text("meter"),
                    value: "meter",
                  ),
                  DropdownMenuItem(
                    child: Text("Kilometer"),
                    value: "Kilometer",
                  )
                ],
                onChanged: (value) {
                  setState(() {
                    to = value;
                  });
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    double n = double.parse(t1.text);
                    setState(() {
                      if (from == "meter" && to == "cm") {
                        result = n * 100;
                      } else if (from == " meter" && to == "feet") {
                        result = n * 3.28;
                      } else if (from == " meter" && to == "Kilometer") {
                        result = n * 1000;
                      } else if (from == " meter" && to == "Inch") {
                        result = n * 0.0254;
                      }
                    });
                  },
                  child: Text("Convert")),
              Text("${from} to ${to} : ${result}")
            ],
          ),
          appBar: AppBar(
            title: Text("Converter"),
          )),
    ));
  }
}
