import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'list.dart';
import 'create.dart';
import 'service_locator.dart';
import 'services/auth.dart';
import 'user.dart';
int _currentIndex = 0;
final Auth _auth = locator<Auth>();

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabsState();
  }
}

class TabsState extends State<Tabs> {
  
  final List<Widget> _children = [
    ListPost(Colors.white),
    CreatePost(Colors.white),
    User(Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF42A5F5),
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, //new
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.list),
              title: Text('Posts'),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: new Icon(Icons.add_box),
              title: Text('New Post'),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: new Icon(Icons.perm_identity),
              title: Text(_auth.getUser().displayName),
              backgroundColor: Colors.white)
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
