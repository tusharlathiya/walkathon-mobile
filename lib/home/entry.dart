import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walkathon/group_details/group_details.dart';

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
    return AnimatedContainer(
      color: Colors.blue,
      margin: EdgeInsets.all(5),
      duration: Duration(seconds: 1),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () => this.setState(() => {this._isExpanded = !this._isExpanded}),
            child: Container(
              height: 50,
              child: Center(child: Text('Entry $_entry')),
            ),
          ),
          Container(
            child: Visibility(
                visible: this._isExpanded,
                maintainState: true,
                maintainAnimation: false,
                child: Text('Hidden Text')),
          )
        ],
      ),
    );
  }
}
