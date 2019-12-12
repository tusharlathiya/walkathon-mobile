import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntryWidget extends StatelessWidget {
  final String _entry;

  EntryWidget(this._entry);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Center(child: Text('Entry $_entry')),
    );
  }

}