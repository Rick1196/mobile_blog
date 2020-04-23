import 'package:blog_manager_mobile/screens/card_body.dart';
import 'package:flutter/material.dart';

class MakeCard extends StatelessWidget {
  final String _title;

  MakeCard(this._title);

    
  @override
  Widget build(BuildContext context) {
    return Card(
         elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white10),
        child: CardBody(_title),
      ));
  }
}
