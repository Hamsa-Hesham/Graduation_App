import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:graduation_app/Brands/brands.dart';
import 'package:graduation_app/Login/LoginScreen.dart';
import 'package:graduation_app/Redux/AppState.dart';
import 'package:graduation_app/Redux/reducers.dart';
import 'package:redux/redux.dart';
import 'Homepage/home.dart';
import 'Signup/SignupScreen.dart';

void main() {
  final _initialState =
      AppState(sliderFontSize: 0.5, bold: false, italic: false);
  final Store<AppState> _store =
      Store<AppState>(reducer, initialState: _initialState);
  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  MyApp({required this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
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
}
