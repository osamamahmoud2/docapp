import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResonseModel {
  final String message;
  final bool status;
  @JsonKey(name: 'data')
  final Userdata userData;

  LoginResonseModel(this.message, this.status, this.userData);

  factory LoginResonseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResonseModelFromJson(json);
}

@JsonSerializable()
class Userdata {
  final String token;
  @JsonKey(name: 'username')
  final String userName;

  Userdata(this.token, this.userName);
  factory Userdata.fromJson(Map<String, dynamic> json) =>
      _$UserdataFromJson(json);
}
