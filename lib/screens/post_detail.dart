import 'package:flutter/material.dart';
import '../models/post.dart';
import 'image_banner.dart';
import 'text_section.dart';

class PostDetail extends StatelessWidget {
  final int _postID;

  PostDetail(this._postID);

  @override
  Widget build(BuildContext context) {
    // NOTE: we'll be moving this to a scoped_model later
    final post = Post.fetchByID(_postID);

    return Scaffold(
        appBar: AppBar(
          title: Text(post.name),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(children: [
                ImageBanner(post.imagePath),
                Column(
                  children: post.facts
                      .map((post) =>
                          Container(child: TextSection(post.title, post.text)))
                      .toList(),
                ),
              ]),
            ),
          ],
        ));
  }

  List<Widget> textSections(Post post) {
    return post.facts
        .map((post) => TextSection(post.title, post.text))
        .toList();
  }
}
