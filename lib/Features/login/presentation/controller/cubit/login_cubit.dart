import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:docapp/Features/login/data/login_model/login.dart';
import 'package:docapp/core/networking/api_service.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginModel? loginModel;
  final Apiservice apiservice;
  LoginCubit(this.apiservice) : super(LoginInitial());

  Future doLogin(String email, String password) async {
    emit(LoginLoading());
    try {
      var response = await apiservice
          .postRequest('/auth/login', {'email': email, 'password': password});

      if (response['code'] == 200) {
        loginModel = LoginModel.fromJson(response);
        emit(LoginSuccess(loginModel!));
      } else {
        emit(LoginFailure(response['message']));
      }
    } on SocketException {
      emit(LoginFailure('No Internet connection!'));
    } on FormatException {
      emit(LoginFailure('Please check your input!'));
    } on Exception catch (e) {
      if (e is TimeoutException) {
        emit(LoginFailure('Cannot ci'));
      } else {
        emit(LoginFailure('There Was an Error please try again Later!'));
      }
    } catch (e) {
      emit(LoginFailure('There Was an Error please try again Later!'));
    }
  }
}
