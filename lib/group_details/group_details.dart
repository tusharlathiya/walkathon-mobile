import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupDetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GroupDetailsState();
  }

}

class GroupDetailsState extends State<GroupDetailsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Progress'),
      ),
      body: RefreshIndicator(
        child: Text(
          'Group name',
        ),
        onRefresh: _refresh,
        notificationPredicate: (n) => n.depth == 0,
      ),
    );
  }


  Future<void> _refresh() {
    return Future.sync(() => 2);
  }
}