import 'package:flutter/material.dart';

class UserInfoListTile extends StatelessWidget {
  final FontWeight fontWeight;
  final String title;

  UserInfoListTile({this.fontWeight = FontWeight.normal, @required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: fontWeight,
          letterSpacing: -0.5,
        ),
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        size: 30.0,
      ),
    );
  }
}
