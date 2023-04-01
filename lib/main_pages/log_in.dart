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
          body: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(children: [
                Container(
                  // padding: const EdgeInsets.all(32.0),
                  height: 280.0,
                  width: 900,

                  //color: const Color(0xffDC1C17),
                  //color: const Color(0xffFFAB91),
                  decoration: new BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: new BorderRadius.only(
                          bottomLeft: const Radius.circular(105.0),
                          bottomRight: const Radius.circular(105.0))
                          ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/photo.png",
                      // height: 200.0,
                      // width: 900,
                    ),
                  ),
                ),
            SizedBox(
              height: 90,
            ),
               
                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: Row(
                //     children: [
                //       Text(
                //         "Подтвердите что вы являетесь админом ",
                //         style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                //       ),
                //     ],
                //   ),
                // ),
            //      SizedBox(
            //   height: 8,
            // ),
                

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13)),
                      labelText: 'Логин',
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13)),
                      labelText: 'Пароль',
                    ),
                  ),
                ),

                SizedBox(
                  height: 120,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff535353),

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