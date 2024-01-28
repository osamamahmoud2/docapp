import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:docapp/Features/sign_Up.dart/data/sign_Up_Model.dart';
import 'package:docapp/core/networking/api_service.dart';
import 'package:meta/meta.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final Apiservice apiservice;
  SignUpCubit(this.apiservice) : super(SignUpInitial());
  SIgnUpModel? signUpModel;
  doSigningUp({
    required String name,
    required String email,
    required String phone,
    required String passwword,
    required String confirmingPassword,
  }) async {
    emit(SignUpLoading());
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
        emit(SignUpSuccess(sIgnUpModel: signUpModel!));
      } else {
        {
          emit(SignUpFailure(errorMessage: response['message']));
        }
      }
    } on SocketException {
      emit(SignUpFailure(errorMessage: 'No Internet connection!'));
    } on FormatException {
      emit(SignUpFailure(errorMessage: 'Please check your input!'));
    } on Exception catch (e) {
      if (e is TimeoutException) {
        emit(SignUpFailure(errorMessage: 'Cannot conect to the Server'));
      } else {
        emit(SignUpFailure(errorMessage: 'Check Yours Internet connection!'));
      }
    } catch (e) {
      emit(SignUpFailure(errorMessage: 'Check Yours Internet connection!'));
    }
  }
}
