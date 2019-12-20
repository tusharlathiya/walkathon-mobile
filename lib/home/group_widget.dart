import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupWidget extends StatefulWidget {
  final String _entry;

  GroupWidget(this._entry);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GroupState(this._entry);
  }
}

class GroupState extends State<GroupWidget> {
  final String _entry;
  bool _isExpanded = false;

  GroupState(this._entry);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: () =>
                this.setState(() => {this._isExpanded = !this._isExpanded}),
            child: Container(
              height: 50,
              child: Column(
                children: <Widget>[
                  Text('Group $_entry'),
                  Container(height: 20,child: LinearProgressIndicator(value: 0.4))
                ],
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: Visibility(
                visible: this._isExpanded,
                maintainState: true,
                maintainAnimation: false,
                child: Column(
                  children: ['a', 'b', 'd'].map((f) {
                    return Text(f);
                  }).toList(),
                )),
          )
        ],
      ),
    );
  }
}
