part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  final LoginModel loginModel;

  LoginSuccess(this.loginModel);
}

final class LoginFailure extends LoginState {
  final String errMag;

  LoginFailure(this.errMag);
}
