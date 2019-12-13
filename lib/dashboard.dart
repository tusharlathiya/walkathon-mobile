import 'package:flutter/material.dart';
import 'package:walkathon/entry.dart';
import 'package:walkathon/group_progress.dart';
import 'package:walkathon/api_client.dart' as apiClient;
import 'package:walkathon/responses/dashboard_response.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Dashboard dashboard;

  Future<void> _refresh() {
    return apiClient.get("").then((res) {
      setState(() {
        dashboard = Dashboard(res);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  @override
  Widget build(BuildContext context) {
    if(dashboard == null) {
      return Container();
    }
    var children = <Widget>[
          GroupProgressWidget(5, dashboard.message)
        ];
    for(int i=0; i<15; i++) {
      children.add(EntryWidget(i.toString()));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RefreshIndicator(
        child: ListView(
          children: children,
        ),
        onRefresh: _refresh,
        notificationPredicate: (n) => n.depth == 0,
      ),
    );
  }
}
