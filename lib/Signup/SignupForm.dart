import 'package:flutter/material.dart';
import 'package:graduation_app/Api/api.dart';
import 'package:graduation_app/Buttons/Button.dart';
import 'package:graduation_app/Fields/passwordField.dart';
import 'package:graduation_app/Fields/textField.dart';
import 'package:graduation_app/Homepage/home.dart';
import 'package:graduation_app/Models/userModel.dart';
import 'package:graduation_app/Pickers/DatePicker.dart';
import 'package:graduation_app/Pickers/genderPicker.dart';
import 'package:graduation_app/Validators/validators.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _userController = TextEditingController();
  final _signupFormKey = GlobalKey<FormState>();
  bool submitted = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signupFormKey,
      child: Column(
        children: [
          TextFIELD(
            _userController,
            'Username',
            validationFunction: (v) {
              if (v.isValidUsername) {
                return '';
              } else {
                return 'Please enter a valid username.';
              }
            },
          ),
          TextFIELD(
            _emailController,
            'Email Address',
            validationFunction: (v) {
              if (v.isValidEmail) {
                return '';
              } else {
                return 'Please enter a valid email.';
              }
            },
          ),
          PasswordFIELD(
            _passwordController,
            'Password',
            validationFunction: (v) {
              if (v.isValidPassword) {
                return '';
              } else {
                return 'Please enter a valid password.';
              }
            },
          ),
          PasswordFIELD(
            _confirmPasswordController,
            'Re-enter Password',
            validationFunction: (v) {
              if (v == _passwordController.text) {
                return '';
              } else {
                return 'Password doesn\'t match!';
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 5,
            ),
            child: Row(
              children: [
                Text(
                  'Date of Birth:',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                DatePICKER(
                  clearDate: false,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Row(
              children: [
                Text(
                  'Gender:',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                GenderPicker(),
              ],
            ),
          ),
          // ============== SIGNUP BUTTON ===================
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 5,
            ),
            child: Button(
              onPressed: () {
                if (_signupFormKey.currentState!.validate()) {
                  setState(() {
                    UserModel user = UserModel(
                      name: _userController.text,
                      password: _passwordController.text,
                      createdAt: DateTime.now(),
                      email: '',
                      id: '',
                      image: '',
                    );

                    createUser(user);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  });
                } else {
                  _userController.clear();
                  _emailController.clear();
                  _passwordController.clear();
                  _confirmPasswordController.clear();
                  // ================= DOESN'T WORK ======================
                  DatePICKER(
                    clearDate: true,
                  );
                  GenderPicker();
                }
              },
              buttonName: 'Sign up',
            ),
          ),
        ],
      ),
    );
  }
}
