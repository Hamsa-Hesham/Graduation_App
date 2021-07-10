import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String name;
  String password;
  String id;
  DateTime createdAt;
  String image;
  String email;

  UserModel({
    required this.name,
    required this.password,
    required this.id,
    required this.createdAt,
    required this.image,
    required this.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        password: json["password"],
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
        image: json["image"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "password": password,
        "id": id,
        "createdAt": createdAt.toIso8601String(),
        "image": image,
        "email": email,
      };
}
