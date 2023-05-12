import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyClass11 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (DynamicDataTable());
  }
}

class DynamicDataTable extends State<MyClass11> {
  List<DataRow> rows = [];
  void addRow(String x, String y, String z) {
    var d1 = DataRow(
        cells: [DataCell(Text(x)), DataCell(Text(y)), DataCell(Text(z))]);

    setState(() {
      rows.add(d1);
    });
  }

  List<DataRow> getRow() {
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController t1 = new TextEditingController();
    TextEditingController t2 = new TextEditingController();
    TextEditingController t3 = new TextEditingController();
    return (MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            TextField(
              controller: t3,
            ),
            ElevatedButton(
                onPressed: () {
                  var a = t1.text;
                  var b = t2.text;
                  var c = t3.text;
                  addRow(a, b, c);
                },
                child: Text("ADD")),
            DataTable(columns: [
              DataColumn(label: Text("ID")),
              DataColumn(label: Text("NAME")),
              DataColumn(label: Text("ADDRESS")),
            ], rows: getRow())
          ],
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Dynamic Data Table"),
        ),
      ),
    ));
  }
}
