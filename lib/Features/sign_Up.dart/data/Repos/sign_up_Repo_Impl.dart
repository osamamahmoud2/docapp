import 'package:dartz/dartz.dart';
import 'package:docapp/Features/sign_Up.dart/data/Repos/sign_Up_Repo.dart';
import 'package:docapp/Features/sign_Up.dart/data/sign_Up_Model.dart';
import 'package:docapp/core/networking/api_service.dart';
import 'package:docapp/core/networking/error_handler.dart';

class SignUpRepoImpl implements SignUpRepo {
  final Apiservice apiservice;

  SignUpRepoImpl({required this.apiservice});
  @override
  Future<Either<Failures, SIgnUpModel>> signUp(
      {required String name,
      required String email,
      required String phone,
      required String passwword,
      required String confirmingPassword}) async {
    SIgnUpModel? signUpModel;
    try {
      var response = await apiservice.postRequest('/auth/register', {
        'name': name,
        'email': email,
        'phone': phone,
        "gender": "1",
        'password': passwword,
        'password_confirmation': confirmingPassword,
      });

      if (response['status'] == true) {
        signUpModel = SIgnUpModel.fromJson(response);
        return Right(signUpModel);
      } else {
        {
          return Left(response['message']);
        }
      }
    } catch (e) {
      return left(ServerFailure.fromRequest(e));
    }
  }
}
