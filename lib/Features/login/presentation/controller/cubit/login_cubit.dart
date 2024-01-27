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
    var response = await apiservice
        .postRequest('/auth/login', {'email': email, 'password': password});

    if (response['status'] == true) {
      loginModel = LoginModel.fromJson(response);
      emit(LoginSuccess(loginModel!));
    } else {
      emit(LoginFailure(response['message']));
    }
  }
}
