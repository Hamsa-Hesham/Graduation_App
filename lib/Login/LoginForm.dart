//@dart=2.9

import 'package:flutter/material.dart';
import 'package:graduation_app/Buttons/Button.dart';
import 'package:graduation_app/Fields/passwordField.dart';
import 'package:graduation_app/Fields/textField.dart';
import 'package:graduation_app/Homepage/home.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _loginFormKey,
      child: Column(
        children: [
          // ============== EMAIL FIELD ===================
          TextFIELD(
            _emailController,
            'Email address',
          ),
          // ============== PASSWORD FIELD ===================
          PasswordFIELD(
            _passwordController,
            'Password',
          ),
          // ============== LOGIN BUTTON ===================
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 5,
            ),
            child: Button(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              buttonName: 'Log in',
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'Forgot password?',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
