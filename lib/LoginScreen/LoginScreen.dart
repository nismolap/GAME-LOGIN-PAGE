// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:game_login_page/LoginScreen/left_side.dart';
import 'package:game_login_page/LoginScreen/right_side.dart';
import 'package:game_login_page/constants.dart';
import 'package:game_login_page/responsive.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                P3,
                P1,
              ]),
        ),
        child: Row(
          children: [
            Expanded(flex: 1, child: Container()),
            Expanded(
                flex: 10,
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (!Responsive.isMobile(context))
                        Expanded(
                            child: Stack(
                          children: [
                            Row(
                              children: [
                                Expanded(flex: 1, child: Container()),
                                Expanded(flex: 1, child: Right_Side())
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(flex: 1, child: Left_Side()),
                                Expanded(flex: 1, child: Container())
                              ],
                            ),
                          ],
                        )),
                      if (Responsive.isMobile(context))
                        Expanded(
                            child: Column(
                          children: [
                            Container(
                              height: 50,
                            ),
                            Right_Side(),
                            const Left_Side(),
                            Container(
                              height: 50,
                            )
                          ],
                        ))
                    ],
                  ),
                )),
            Expanded(flex: 1, child: Container()),
          ],
        ),
      ),
    );
  }
}
