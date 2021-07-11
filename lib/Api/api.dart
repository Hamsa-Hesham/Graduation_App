import 'dart:convert';
import 'package:graduation_app/Category/categoryModel.dart';
import 'package:graduation_app/Models/userModel.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

var token;
String _baseURL = "159.89.99.188:9000";
// ==================== USER LOGIN =========================
Future<String> login(
    {required String username, required String password}) async {
  var body = jsonEncode({'username': username, 'password': password});
  print(body);
  print(jsonDecode(body.toString())['username']);
  SharedPreferences prefs = await SharedPreferences.getInstance();

  final response = await http.post(
    Uri.http(_baseURL, "/users/login"),
    headers: <String, String>{
      'Content-Type': 'application/json;charset=UTF-8',
    },
    body: body,
  );
  print(response);
  switch (response.statusCode) {
    case 200:
      token = response.body;
      await prefs.setString('apiToken', token);
      print("The token is:");
      print(prefs.getString('apiToken'));
      return 'Done!';

    default:
      return ("Error :" + response.body);
  }
}

// ==================== USER REGISTER ===================
Future<UserModel> createUser(UserModel user) async {
  final http.Response response = await http
      .post(
    Uri.http(_baseURL, '/users/register'),
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

// ====================    DELETE USER    ===================
Future deleteUser(int userID) async {
  final http.Response response = await http.delete(
    Uri.http(_baseURL, '/users/:$userID'),
    headers: {},
  );
  if (response.statusCode == 200) {
    print(response.body);
  } else {
    print('An error occured while deleting user');
    throw Exception('Can\'t delete user');
  }
}

// ==================== UPDATE USER DATA  ===================
Future<UserModel> updateUserData(int userID) async {
  final http.Response response = await http.put(
    Uri.http(_baseURL, '/users/:$userID'),
    headers: {},
    body: {},
  );
  if (response.statusCode == 200) {
    print(response.body);
    return UserModel(
      firstName: '',
      lastName: '',
      email: '',
      password: '',
    );
  } else {
    print('An error occured while updating user');
    throw Exception('Can\'t update user');
  }
}

// ==================== GET CATEGORY DATA ===================
Future<Category> getCategoryData() async {
  http.Response categoryData = await http.get(
    Uri.http(_baseURL, '/category/'),
    headers: {
      'auth': "Token token=$token",
    },
  );
  if (categoryData.statusCode == 200) {
    print(Category.fromJson(json.decode(categoryData.body)));
    return Category.fromJson(json.decode(categoryData.body));
  } else {
    throw Exception('Can not load category Data');
  }
}
