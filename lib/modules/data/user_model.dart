import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

class UserModel {
  bool? success;
  String? message;
  Data? data;

  UserModel({this.success, this.message, this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }
}

class Data {
  int? id;
  String? username;
  String? email;
  String? phone;
  String? status;
  String? dateOfBirth;
  String? token;

  Data(
      {this.id,
      this.username,
      this.email,
      this.phone,
      this.status,
      this.dateOfBirth,
      this.token});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    phone = json['phone'];
    status = json['status'];
    dateOfBirth = json['date_of_birth'];
    token = json['token'];
  }
}
