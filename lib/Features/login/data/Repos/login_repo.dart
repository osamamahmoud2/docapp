import 'package:dartz/dartz.dart';
import 'package:docapp/Features/login/data/login_model/login.dart';
import 'package:docapp/core/networking/error_handler.dart';

abstract class LoginRepo {
  Future<Either<Failures, LoginModel>> login(String email, String password);
}
