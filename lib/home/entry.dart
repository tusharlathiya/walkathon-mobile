import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walkathon/group_details/group_details.dart';

class EntryWidget extends StatelessWidget {
  final String _entry;

  EntryWidget(this._entry);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GroupDetailsPage())),
      child: Container(
        height: 50,
        child: Center(child: Text('Entry $_entry')),
      ),
    ) ;
  }

}