// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:game_login_page/constants.dart';

class Left_Side extends StatelessWidget {
  const Left_Side({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4), BlendMode.colorBurn),
          image: const AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.blueGrey,
            spreadRadius: 0.1,
            blurRadius: 18,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'META',
                  style: TextStyle(
                      color: Colors.white70,
                      fontStyle: FontStyle.normal,
                      fontSize: 18),
                ),
                Text(
                  'GAMES',
                  style: TextStyle(
                      color: P4,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          )),
          Expanded(
              child: Column(
            children: [
              const Text(
                'YOUR MOST WANTED GAMES ARE HERE',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
              Container(
                height: 25,
              ),
              const Text(
                'The meta will go live, so sign up',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'to enjoy ',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                  Text(
                    'GAMES',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                ],
              ),
              Container(
                height: 18,
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                color: P4,
                height: 50,
                onPressed: () {},
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Text(
                    'SIGN UP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: P3,
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
