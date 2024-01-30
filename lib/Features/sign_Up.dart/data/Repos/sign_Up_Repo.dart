import 'package:dartz/dartz.dart';
import 'package:docapp/Features/sign_Up.dart/data/sign_Up_Model.dart';
import 'package:docapp/core/networking/error_handler.dart';

abstract class SignUpRepo {
  Future<Either<Failures, SIgnUpModel>> signUp({
    required String name,
    required String email,
    required String phone,
    required String passwword,
    required String confirmingPassword,
  });
}
