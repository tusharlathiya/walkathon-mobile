import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PositionWidget extends StatelessWidget {
  final int progress;
  final String message;

  PositionWidget(this.progress, this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                ),
              ),
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.red,
                  child: Text('Hi'),
                ),
              ),
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
