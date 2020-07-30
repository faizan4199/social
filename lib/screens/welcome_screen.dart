import 'package:flutter/material.dart';
import 'package:social/components/rounded_button.dart';
import 'package:social/constants/decoration_constants.dart';
import 'package:social/screens/login_screen.dart';
import 'package:social/components/vertical_text.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id='welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Widget buildAuthScreen(){
    return Text('Authenticated');
  }

  buildUnAuthScreen(){
    return Scaffold(
      body: Container(
        decoration: kDecoration,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           Row(
             children: <Widget>[
               VerticalText(text:'SOCIAL'),
               Flexible(
                 child: Center(
                   child: Baseline(
                     baselineType: TextBaseline.alphabetic,
                     baseline: 120.0,
                     child: Text('WELCOME TO SOCIAL',
                     style: TextStyle(
                       fontSize: 65.0,
                       color: Colors.white70
                     ),),
                   ),
                 ),
               )
             ],
           ),
            SizedBox(
              height: 100.0,
            ),
            RoundedButton(
              title: 'Get Started',
              onPressed: (){
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
  bool isAuth=false;
  @override
  Widget build(BuildContext context) {
    return isAuth ? buildAuthScreen() : buildUnAuthScreen();
  }
}
