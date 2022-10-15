import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/back.jpeg'),
                        fit: BoxFit.cover)),
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: Center(
                          child: Container(
                              width: 500,
                              height: 100,
                              child: Image.asset(
                                'assets/images/phat.png',
                                fit: BoxFit.cover,
                              )))),
                  SizedBox(height: 50),
                  Container(
                      color: Color.fromARGB(255, 68, 202, 255),
                      height: 150,
                      width: 320,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'RS  - 134 ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'TOTAL WALLET  BALANCE',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 10),
                  Container(
                      color: Color.fromARGB(255, 68, 202, 255),
                      height: 150,
                      width: 320,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'I HERD POINTS',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'EARNED FROM PROMOTION OFFER AT IHERD',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 10),
                  Container(
                      width: double.infinity,
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Color.fromARGB(255, 68, 202, 255),
                        child: Text("SYNC"),
                        onPressed: () {},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(150.0),
                        ),
                      ))
                ]))));
  }
}
