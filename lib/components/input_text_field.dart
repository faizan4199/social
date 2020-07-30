import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  InputTextField({this.title,this.onChanged,this.pass,this.board});
  final String title;
  final Function onChanged;
  final bool pass;
  final TextInputType board;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          keyboardType: board,
          obscureText: pass,
          onChanged: onChanged,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
          decoration: InputDecoration(
            fillColor: Colors.lightBlueAccent,
            labelText: title,
            labelStyle: TextStyle(
              color: Colors.teal.shade700,
            ),
          ),
        ),
      ),
    );
  }
}