import 'package:flutter/material.dart';
import 'package:graduation_app/Api/api.dart';
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
            validationFunction: (String) {
              return '';
            },
          ),
          // ============== PASSWORD FIELD ===================
          PasswordFIELD(
            _passwordController,
            'Password',
            validationFunction: (String) {
              return '';
            },
          ),
          // ============== LOGIN BUTTON ===================
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 5,
            ),
            child: Button(
              onPressed: () {
                if (_loginFormKey.currentState!.validate()) {
                  var y = login(
                    username: _emailController.text,
                    password: _passwordController.text,
                  );
                  print(y);
                  if (y == 'Done!') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  }
                }
              },
              buttonName: 'Log in',
            ),
          ),
        ],
      ),
    );
  }
}
