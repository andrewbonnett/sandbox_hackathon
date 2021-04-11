import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // Search bar
        appBar: AppBar(
          title: Text('Your Profile'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Icon(
                  Icons.account_circle,
                  color: Color(0xFFDDDDDD),
                  size: 100.0,
                ),
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Color(0xFF999999),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Brigham Young University',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Color(0xFFBBBBBB),
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                  width: 240.0,
                  child: Divider(
                    color: Color(0xFFCCCCCC),
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color(0xFFBBBBBB),
                    ),
                    title: Text(
                      '+44 123 456 789',
                      style: TextStyle(
                        color: Color(0xFFBBBBBB),
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.more_vert,
                      color: Color(0xFFBBBBBB),
                    ),
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Color(0xFFBBBBBB),
                    ),
                    title: Text(
                      'angela@email.com',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFBBBBBB),
                          fontFamily: 'Source Sans Pro'),
                    ),
                    trailing: Icon(
                      Icons.more_vert,
                      color: Color(0xFFBBBBBB),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                  width: 240.0,
                  child: Divider(
                    color: Color(0xFFCCCCCC),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget buildprojectsBody() {
    return Column();
  }
}
