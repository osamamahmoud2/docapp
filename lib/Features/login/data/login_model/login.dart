class LoginModel {
  final String? message;
  final UserData? data;
  final bool? status;
  final int? code;

  LoginModel({this.message, this.data, this.status, this.code});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      message: json['message'],
      data: UserData.fromJson(json['data']),
      status: json['status'],
      code: json['code'],
    );
  }
}

class UserData {
  final String? userName;
  final String? token;

  UserData(this.userName, this.token);
  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(json['UserName'], json['Token']);
  }
}
