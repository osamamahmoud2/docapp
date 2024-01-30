import 'package:dartz/dartz.dart';
import 'package:docapp/Features/login/data/Repos/login_repo.dart';
import 'package:docapp/Features/login/data/login_model/login.dart';
import 'package:docapp/core/networking/api_service.dart';
import 'package:docapp/core/networking/error_handler.dart';

class LoginRepoImpl implements LoginRepo {
  final Apiservice apiservice;

  LoginRepoImpl({required this.apiservice});
  @override
  Future<Either<Failures, LoginModel>> login(
      String email, String password) async {
    LoginModel loginModel;
    try {
      var response = await apiservice
          .postRequest('/auth/login', {'email': email, 'password': password});
      if (response['code'] == 200) {
        loginModel = LoginModel.fromJson(response);
        return right(loginModel);
      } else {
        return left(ServerFailure(response['message']));
      }
    } catch (e) {
      return left(ServerFailure.fromRequest(e));
    }
  }
}
