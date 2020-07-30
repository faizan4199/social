import 'package:flutter/material.dart';
import 'package:social/components/rounded_button.dart';
import 'package:social/constants/decoration_constants.dart';
import 'package:social/components/vertical_text.dart';
import 'package:social/components/input_text_field.dart';
import 'package:social/screens/chat_screen.dart';
import 'package:social/screens/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kDecoration,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Flexible(
              child: Row(
                children: <Widget>[
                  VerticalText(
                    text: 'Sign In',
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Flexible(
                    child: Center(
                      child: Baseline(
                        baseline: 100.0,
                        baselineType: TextBaseline.alphabetic,
                        child: Text(
                          'Welcome       Back',
                          style: TextStyle(
                            fontSize: 48.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InputTextField(
              board: TextInputType.emailAddress,
              pass: false,
              onChanged: (value) {
                email = value;
              },
              title: 'Email ID',
            ),
            InputTextField(
              pass: true,
              onChanged: (value) {
                password = value;
              },
              title: 'Password',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
              child: Container(
                alignment: Alignment.topRight,
                height: 20,
                child: FlatButton(
                  onPressed: () {
                    print('YOu idiot');
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ),
            RoundedButton(
              title: 'Let\'s Go',
              onPressed: () {
                Navigator.pushNamed(context, ChatScreen.id);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Container(
                alignment: Alignment.topRight,
                //color: Colors.red,
                height: 30,
                child: Row(
                  children: <Widget>[
                    Text(
                      'Your first time?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white70,
                      ),
                    ),
                    FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        Navigator.pushNamed(context, RegistrationScreen.id);
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
