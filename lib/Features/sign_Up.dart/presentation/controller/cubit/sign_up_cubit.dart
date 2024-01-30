import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:docapp/Features/sign_Up.dart/data/Repos/sign_Up_Repo.dart';
import 'package:docapp/Features/sign_Up.dart/data/sign_Up_Model.dart';
import 'package:docapp/core/networking/api_service.dart';
import 'package:meta/meta.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo signUpRepo;
  SignUpCubit(this.signUpRepo) : super(SignUpInitial());
  SIgnUpModel? signUpModel;
  doSigningUp({
    required String name,
    required String email,
    required String phone,
    required String passwword,
    required String confirmingPassword,
  }) async {
    emit(SignUpLoading());
    final result = await signUpRepo.signUp(
        name: name,
        email: email,
        phone: phone,
        passwword: passwword,
        confirmingPassword: confirmingPassword);
    result.fold(
        (failure) => emit(SignUpFailure(errorMessage: failure.errorMsg)),
        (signUpModel) => emit(SignUpSuccess(sIgnUpModel: signUpModel)));
  }
}
