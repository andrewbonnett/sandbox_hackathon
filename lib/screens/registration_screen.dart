import 'package:flash_chat/components/rounded_button2.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import '../app.dart';

class RegistrationScreen extends StatefulWidget {
  static const routeName = '/register';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 96.0,
              ),
              CircleAvatar(
                radius: 66.0,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 63.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.grey,
                    size: 48.0,
                  ),
                ),
              ),
              SizedBox(
                height: 96.0,
              ),
              Text(
                'Your P',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your email',
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              // TextField(
              //   obscureText: true,
              //   textAlign: TextAlign.center,
              //   onChanged: (value) {
              //     password = value;
              //   },
              //   decoration: kTextFieldDecoration.copyWith(
              //     hintText: 'Enter your password',
              //   ),
              // ),
              // SizedBox(
              //   height: 24.0,
              // ),
              RoundedButton2(
                onPressed: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                    if (newUser != null) {
                      Navigator.pushNamed(context, App.routeName);
                    }
                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
                color: Colors.blueAccent,
                title: 'Register',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
