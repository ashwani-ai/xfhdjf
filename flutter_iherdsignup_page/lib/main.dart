import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool isObscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/back.jpeg'),
                        fit: BoxFit.cover)),
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 250.0),
                      child: Center(
                        child: Text('Sign Up !',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                            )),
                      )),
                  SizedBox(height: 20.0),
                  Container(
                      height: 350,
                      width: 290,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.only(left: 1),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                labelText: " Mobileno ",
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                prefixIcon: Icon(Icons.mobile_friendly_outlined),
                                hintText: "967224332",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: " Password",
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                prefixIcon: Icon(Icons.lock),
                                hintText: "password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "Confirm  Password",
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                prefixIcon: Icon(Icons.lock),
                                hintText: "Confirm password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: double.infinity,
                            child: FlatButton(
                              child: Text(
                                'Signup',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Forgot password',
                                        style: TextStyle(color: Colors.blue))),
                              ]),
                        ],
                      )),
                  RichText(
                      text: TextSpan(
                          text: 'Already have an account',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          children: [
                        TextSpan(
                            text: 'login',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {})
                      ]))
                ]))));
  }
}
