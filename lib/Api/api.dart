//@dart=2.9

import 'dart:convert';
import 'package:graduation_app/Models/userModel.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

var token;
String _baseURL = '159.89.99.188:9000/';
// ==================== USER LOGIN =========================
Future<String> login() async {
  var body = jsonEncode({'username': 'Hamsa', 'password': '1235@'});
  print(body);
  print(jsonDecode(body.toString())['username']);
  SharedPreferences prefs = await SharedPreferences.getInstance();

  final response = await http.post(
    Uri.http(_baseURL, 'users/Login'),
    headers: <String, String>{
      'Content-Type': 'application/json;charset=UTF-8',
    },
    body: body,
  );
  switch (response.statusCode) {
    case 200:
      token = response.body;
      await prefs.setString('apiToken', token);
      print("The token is:" + prefs.getString('apiToken'));
      return token;
      break;

    default:
      return ("Error :" + response.body);
      break;
  }
}

// ==================== USER REGISTER ===================
Future<UserModel> createUser(UserModel user) async {
  final http.Response response = await http
      .post(
    Uri.http(_baseURL, 'users/register'),
    headers: {
      'Content-Type': 'application/json;charset=UTF-8',
    },
    body: jsonEncode(
      user.toJson(),
    ),
  )
      .catchError((error) {
    print("ERROR CREATE:" + error);
  });

  if (response.statusCode == 200) {
    print(response.body);
    print(UserModel.fromJson(json.decode(response.body)));
    return UserModel.fromJson(json.decode(response.body));
  } else {
    print('Error');
    throw Exception('Can not load');
  }
}

// ==================== GET USER DATA ===================
Future<UserModel> getData({int userID}) async {
  http.Response userData = await http.get(
    Uri.http(_baseURL, 'users/[/{params}]'),
    headers: {
      'token': token,
    },
  );
  if (userData.statusCode == 200) {
    print(UserModel.fromJson(json.decode(userData.body)));
    return UserModel.fromJson(json.decode(userData.body));
  } else {
    throw Exception('Can not load category Data');
  }
}

// ====================
