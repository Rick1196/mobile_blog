import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardBody extends StatelessWidget {
  final String _title;

  CardBody(this._title);

  @override
  build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Colors.black26))),
          child: Icon(Icons.local_library, color: Colors.black),
        ),
        title: Text(
          _title,
          style: TextStyle(color: Colors.black26, fontWeight: FontWeight.bold),
        ),
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
        trailing:
            Icon(Icons.keyboard_arrow_right, color: Colors.black, size: 30.0));
  }
}
