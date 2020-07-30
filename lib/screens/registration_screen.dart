import 'package:flutter/material.dart';
import 'package:social/components/rounded_button.dart';
import 'package:social/screens/login_screen.dart';
import 'package:social/components/input_text_field.dart';
import 'package:social/components/vertical_text.dart';
import 'package:social/constants/decoration_constants.dart';
import 'package:social/screens/chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';


class RegistrationScreen extends StatefulWidget {
  static const id='registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth=FirebaseAuth.instance;
  String name;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kDecoration,
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  VerticalText(
                    text: 'Sign Up',
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Flexible(
                    child: Center(
                      child: Baseline(
                        baseline: 100.0,
                        baselineType: TextBaseline.alphabetic,
                        child: Text(
                          'Let\'s Start  A  New Journey',
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
              InputTextField(
                pass: false,
                onChanged: (value){
                  name =value;
                },
                title: 'Your Name',
              ),
              InputTextField(
                board: TextInputType.emailAddress,
                pass: false,
                onChanged: (value){
                  email=value;
                },
                title: 'Email ID',
              ),
              InputTextField(
                pass: true,
                onChanged: (value){
                  password=value;
                },
                title: 'Password',
              ),

              RoundedButton(
                title: '',
                onPressed: () async {
                  try{
                    final newUser=await  _auth.createUserWithEmailAndPassword(email: email, password: password);
                    if(newUser !=null){
                      Navigator.pushNamed(context, ChatScreen.id);
                    }

                  }
                  catch(e){
                    print(e);
                  }
                  //Navigator.pushNamed(context,ChatScreen.id);
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
                        'Have we met before?',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white70,
                        ),
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                        child: Text(
                          'Sign In',
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
          ],
        ),
      ),
    );
  }
}

