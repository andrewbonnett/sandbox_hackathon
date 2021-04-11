import 'package:flutter/material.dart';

class BookmarksScreen extends StatefulWidget {
  @override
  _BookmarksScreenState createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // Search bar
        appBar: AppBar(
          title: Text('For You'),
        ),
        body: SafeArea(
          child: Center(child: Text('Projects bookmarked by the user here.')),
        ));
  }

  Widget buildprojectsBody() {
    return Column();
  }
}
