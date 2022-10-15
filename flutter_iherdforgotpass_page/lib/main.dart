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
                        child: Text('Forgot Password',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                            )),
                      )),
                  SizedBox(height: 20.0),
                  Container(
                      height: 175,
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
                                labelText: " MOBILE NUMBER ",
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                prefixIcon: Icon(Icons.phone),
                                hintText: "9675224332",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: double.infinity,
                            child: FlatButton(
                              child: Text(
                                'RESET PASSWORD',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 30),
                  RichText(
                      text: TextSpan(
                          text: 'Already  have account ',
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
