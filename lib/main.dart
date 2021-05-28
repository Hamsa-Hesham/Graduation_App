//@dart=2.9
import 'package:flutter/material.dart';
import 'package:graduation_app/Login/LoginScreen.dart';

import 'Homepage/home.dart';
import 'Signup/SignupScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        '/HomePage': (context) => HomePage(),
        '/signUp': (context) => SignupScreen(),
        '/login': (context) => LoginScreen(),
      },
    ),
  );
}
