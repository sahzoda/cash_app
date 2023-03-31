import 'dart:developer';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

final TextEditingController _nameController = TextEditingController();

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  String? _name;
  String? _email;
  String? _password;
  bool isVisible = true;
  bool processing = false;

  void snackBar(String text) {
    _scaffoldKey.currentState!.showSnackBar(
      SnackBar(
        duration: Duration(seconds: 4),
        backgroundColor: Colors.yellow,
        content: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
        key: _scaffoldKey,
        child: Scaffold(
          // backgroundColor: Color(),
          body: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/photo.png",
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      height: 85,
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      // Text(
                      //   "Введите ваш Логин ",
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.w900, fontSize: 20),
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        child: Container(
                          width: 400,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'Логин',
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey.shade800),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        child: Container(
                          width: 400,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Text(
                                'Пароль',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey.shade800),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade800,

                          // border:Border.all(color:Colors.red)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 150,
                            vertical: 10,
                          ),
                          child: Text(
                            'Продолжить',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ]),
            ),
          ),
        ));
  }
}

// extension EmailValidator on String {
//   bool isValidEmail() {
//     return RegExp(r'^([a-zA-Z0-9]+)([@])([a-zA-Z0-9]+)([\-\_\.])([a-z]{2,3})$')
//         .hasMatch(this);

// }
// }