// ignore_for_file: duplicate_ignore

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String fullName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_constructors, prefer_const_constructors, prefer_const_constructors
              children: <Widget>[
                const Text(
                  "Family",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("hello family Sign in here",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                const SizedBox(height: 20),
                Image.asset(
                  'assets/login1.jpg',
                ),
                const SizedBox(
                  height: 10,
                ),

                TextFormField(
                  decoration: textInputDecoration.copyWith(
                      labelText: "Full name",
                      prefixIcon: Icon(
                        Icons.person,
                        color: Theme.of(context).primaryColor,
                      )),
                  onChanged: (val) {
                    setState(() {
                      //  email = val;
                    });
                    //check the validation
                    FormFieldValidator;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: textInputDecoration.copyWith(
                      labelText: "Email",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Theme.of(context).primaryColor,
                      )),
                  onChanged: (val) {
                    setState(() {
                      //  email = val;
                    });
                    //check the validation
                    FormFieldValidator;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  obscureText: true,
                  decoration: textInputDecoration.copyWith(
                      labelText: "Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Theme.of(context).primaryColor,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black38),
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                // ignore: prefer_const_constructors
                Text.rich(TextSpan(
                  text: "Already have an Account  ",
                  style: const TextStyle(color: Colors.black87, fontSize: 16),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Login now",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            nextScreen(context, const Registerpage());
                          }),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

register() {}
