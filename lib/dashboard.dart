import 'package:flutter/material.dart';
import 'package:fit_kit/fit_kit.dart';
import 'package:walkathon/entry.dart';
import 'package:walkathon/group_progress.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void read() async {
//    final result = await FitKit.read(
//      DataType.STEP_COUNT,
//      dateFrom: DateTime.now().subtract(Duration(days: 5)),
//      dateTo: DateTime.now(),);
//    var result2 = result[0];
  }

  @override
  void initState() {
    super.initState();
    read();
  }

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[
          GroupProgressWidget(5)
        ];
    for(int i=0; i<15; i++) {
      children.add(EntryWidget(i.toString()));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: children,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
