import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/rounded_button2.dart';

class WelcomeScreen extends StatefulWidget {
  static const routeName = '/welcome';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    width: 20.0,
                    height: 160.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.north,
                        size: 100.0,
                      ),
                      Text(
                        'ASCEND',
                        style: TextStyle(
                          fontFamily: 'Horizon',
                          fontWeight: FontWeight.w700,
                          fontSize: 60.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      // Hero(
                      //   tag: 'logo',
                      //   child: Container(
                      //     child: Image.asset('images/logo.png'),
                      //     height: 60.0,
                      //   ),
                      // ),
                      const SizedBox(
                        width: 20.0,
                        height: 160.0,
                      ),
                      const Text(
                        'GET',
                        style: TextStyle(fontSize: 43.0),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      DefaultTextStyle(
                        style: const TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Horizon',
                            color: Colors.blueAccent),
                        child: AnimatedTextKit(animatedTexts: [
                          RotateAnimatedText('CONNECTED'),
                          RotateAnimatedText('WORKING'),
                        ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            RoundedButton2(
              title: 'Log In',
              onPressed: () {
                Navigator.popAndPushNamed(context, LoginScreen.routeName);
              },
              color: Colors.lightBlueAccent,
            ),
            RoundedButton2(
              title: 'Register',
              onPressed: () {
                Navigator.popAndPushNamed(
                    context, RegistrationScreen.routeName);
              },
              color: Colors.blueAccent,
            ),
            SizedBox(
              height: 96.0,
            ),
          ],
        ),
      ),
    );
  }
}
