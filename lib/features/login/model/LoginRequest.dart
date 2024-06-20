import 'package:freezed_annotation/freezed_annotation.dart';
part 'LoginRequest.g.dart';


@JsonSerializable()
class LoginRequest{
  String email;
  String password;

  LoginRequest({required this.email, required this.password});

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}