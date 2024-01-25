// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResonseModel _$LoginResonseModelFromJson(Map<String, dynamic> json) =>
    LoginResonseModel(
      json['message'] as String,
      json['status'] as bool,
      Userdata.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResonseModelToJson(LoginResonseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.userData,
    };

Userdata _$UserdataFromJson(Map<String, dynamic> json) => Userdata(
      json['token'] as String,
      json['username'] as String,
    );

Map<String, dynamic> _$UserdataToJson(Userdata instance) => <String, dynamic>{
      'token': instance.token,
      'username': instance.userName,
    };
