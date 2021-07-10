import 'package:flutter/material.dart';
import 'package:graduation_app/Bars/bottomNavigationBar.dart';
import 'package:graduation_app/Buttons/googleButton.dart';
import 'package:graduation_app/Signup/SignupScreen.dart';

import 'LoginForm.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          //================ COLOR THE PHOTO ====================
          /* Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.4),
          ),*/
          Center(
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
                LoginForm(),
                GoogleSigninButton(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBAR(
        'Don\'t have an account?',
        'Sign Up!',
        SignupScreen(),
      ),
    );
  }
}
