//@dart=2.9
import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String name;
  String password;
  String id;
  DateTime createdAt;
  String image;

  UserModel({
    this.name,
    this.password,
    this.id = '',
    this.createdAt,
    this.image,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        password: json["password"],
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "password": password,
        "id": id,
        "createdAt": createdAt.toIso8601String(),
        "image": image,
      };
}