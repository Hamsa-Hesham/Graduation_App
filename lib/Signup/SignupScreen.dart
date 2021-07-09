//@dart=2.9
import 'package:flutter/material.dart';
import 'package:graduation_app/Bars/bottomNavigationBar.dart';
import 'package:graduation_app/Buttons/googleButton.dart';
import 'package:graduation_app/Login/LoginScreen.dart';
import 'package:graduation_app/Signup/SignupForm.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            'images/background.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Mercato',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Billabong',
                      fontSize: 40,
                    ),
                  ),
                  Divider(
                    height: 50,
                  ),
                  SignupForm(),
                  GoogleSigninButton(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBAR(
        'Already have an account?!',
        'Log in',
        LoginScreen(),
      ),
    );
  }
}
