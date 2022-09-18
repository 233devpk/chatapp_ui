import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black26, width: 2),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black38, width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xEFC8740E), width: 2),
  ),
);

Future<void> nextScreen(context, page) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

Future<void> nextScreenREplaca(context, page) async {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}
