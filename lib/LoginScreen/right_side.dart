// ignore_for_file: deprecated_member_use, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:game_login_page/constants.dart';

class Right_Side extends StatelessWidget {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  Right_Side({Key? key}) : super(key: key);

  void login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      formdata.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              P2,
              P3,
            ]),
      ),
      child: Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 90, bottom: 40),
                    child: const Text(
                      'Sign in to the GAME',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Form(
                    key: formstate,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: P4,
                            style: const TextStyle(fontSize: 13, color: P4),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(
                                  color: P4,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(
                                  color: P4,
                                  width: 1.0,
                                ),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 40.0),
                              labelText: 'Username',
                              labelStyle:
                                  const TextStyle(color: P4, fontSize: 13),
                              hintStyle:
                                  const TextStyle(color: P4, fontSize: 13),
                            ),
                            onSaved: (val) {},
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return 'Please complete the field';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            cursorColor: P4,
                            style: const TextStyle(fontSize: 13, color: P4),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(
                                  color: P4,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(
                                  color: P4,
                                  width: 1.0,
                                ),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 40.0),
                              labelText: 'Password',
                              labelStyle:
                                  const TextStyle(color: P4, fontSize: 13),
                              hintStyle:
                                  const TextStyle(color: P4, fontSize: 13),
                            ),
                            onSaved: (val) {},
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return 'Please complete the field';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                            color: Colors.white,
                            height: 50,
                            onPressed: () {
                              login();
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: const Text(
                                'LOGIN',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: P3,
                                  fontSize: 13.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (val) {},
                                side: MaterialStateBorderSide.resolveWith(
                                  (states) =>
                                      const BorderSide(width: 1.0, color: P4),
                                ),
                              ),
                              const Text(
                                'Remember',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            ],
                          )),
                      const Expanded(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 25,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: const [
                      Text(
                        'Dont Have an Account? ',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      Text(
                        'SIGN UP',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              )),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}
