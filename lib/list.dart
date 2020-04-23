import 'package:blog_manager_mobile/screens/make_card.dart';
import 'package:flutter/material.dart';
import './models/post.dart';
import './screens/post_detail.dart';

class ListPost extends StatelessWidget {
  final Color color;

  ListPost(this.color);

  @override
  Widget build(BuildContext context) {
    final posts = Post.fetchAll();
    return new WillPopScope(
        onWillPop: () async => false,
        child: new Scaffold(
          appBar: AppBar(
            title: Text('Posts'),
            leading: new Container(),
          ),
          body: ListView(
            children: posts
                .map((location) => GestureDetector(
                    onTap: () => _onLocationTap(context, location.id),
                    child: Container(child: MakeCard(location.name))))
                .toList(),
          ),
          backgroundColor: Colors.white,
        ));
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return PostDetail(locationID);
        },
      ),
    );
  }
}
