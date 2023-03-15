import 'package:cash_app/main_pages/log_in.dart';
import 'package:flutter/material.dart';

import 'main_pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: welcomePage(),
      // home: SignUpPage(),
    );
  }
}