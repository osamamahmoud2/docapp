import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:docapp/Features/login/data/Repos/login_repo.dart';
import 'package:docapp/Features/login/data/login_model/login.dart';
import 'package:docapp/core/networking/api_service.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginModel? loginModel;
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginInitial());

  Future doLogin(String email, String password) async {
    emit(LoginLoading());
    var result = await loginRepo.login(email, password);
    result.fold((failure) => emit(LoginFailure(failure.errorMsg)),
        (loginModel) => emit(LoginSuccess(loginModel)));
        
  }
}
