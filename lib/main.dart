import 'package:flutter/material.dart';
import 'package:social/screens/chat_screen.dart';
import 'package:social/screens/welcome_screen.dart';
import 'package:social/screens/login_screen.dart';
import 'package:social/screens/registration_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        RegistrationScreen.id:(context)=>RegistrationScreen(),
        ChatScreen.id:(context)=> ChatScreen(),
      },
    );
  }
}


