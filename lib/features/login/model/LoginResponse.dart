
import 'package:freezed_annotation/freezed_annotation.dart';
part 'LoginResponse.g.dart';

@JsonSerializable()
class LoginResponse{
  @JsonKey(name: "data")
  UserData? userData;
  String message;
  String error;

  LoginResponse({required this.userData, required this.message, required this.error});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

}

@JsonSerializable()
class UserData{
  String token;
  String name;

  UserData({required this.token, required this.name});
  factory UserData.fromJson(Map<String, dynamic> json) =>_$UserDataFromJson(json);

}