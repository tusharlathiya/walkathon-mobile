import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupProgressWidget extends StatelessWidget {
  final int progress;
  final String message;

  GroupProgressWidget(this.progress, this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '$message: ',
              ),
              Text(
                '$progress',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
          Container(
            height: 20,
            child: LinearProgressIndicator(
              value: 0.9,
              semanticsLabel: "steps",
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                'Your group\'s steps: ',
              ),
              Text(
                '$progress',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
          Container(
            height: 100,
            width: 100,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                CircularProgressIndicator(
                  strokeWidth: 10,
                  value: 0.9,
                  semanticsLabel: "steps",
                ),
                Center(
                  child: Text('1230/4000'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}