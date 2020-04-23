import 'package:blog_manager_mobile/styles.dart';
import 'package:flutter/material.dart';

import 'service_locator.dart';
import 'services/auth.dart';

final Auth _auth = locator<Auth>();

class User extends StatelessWidget {
  final Color color;

  User(this.color);

  Widget _button(String text, Color splashColor, Color highlightColor,
      Color fillColor, Color textColor, BuildContext context) {
    return RaisedButton(
      highlightElevation: 0.0,
      splashColor: splashColor,
      highlightColor: highlightColor,
      elevation: 0.0,
      color: fillColor,
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: textColor, fontSize: 20),
      ),
      onPressed: () {
        signOut(context);
      },
    );
  }

  void signOut(BuildContext context) {
    Navigator.of(context).pop();
    _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    Widget userImage() {
      return Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 220,
          child: Stack(
            children: <Widget>[
              Positioned(
                  child: Container(
                child: Align(
                    child: CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            NetworkImage(_auth.getUser().photoUrl))),
                height: 154,
              )),
            ],
          ),
        ),
      );
    }

    return new WillPopScope(
      onWillPop: () async => false,
      child: new Scaffold(
        appBar: AppBar(
          title: Text(_auth.getUser().displayName),
          leading: new Container(),
        ),
        body: Column(
          children: <Widget>[
            userImage(),
            Text(
              _auth.getUser().displayName,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black26, fontSize: LargeTextSize),
            ),
            Text(
              _auth.getUser().email,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black26, fontSize: LargeTextSize),
            ),
            Padding(
              child: Container(
                  child: _button('Sign out', Colors.blueAccent, Colors.white,
                      Colors.blueAccent, Colors.white, context)),
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            )
          ],
        ),
        backgroundColor: color,
      ),
    );
  }
}
