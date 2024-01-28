import 'package:docapp/Features/sign_Up.dart/presentation/controller/cubit/sign_up_cubit.dart';
import 'package:docapp/core/helpers/spaces.dart';
import 'package:docapp/core/routings/routes.dart';
import 'package:docapp/core/themings/colors.dart';
import 'package:docapp/core/themings/styles.dart';
import 'package:docapp/core/widgets/Custom_Loading_Indicator.dart';
import 'package:docapp/core/widgets/app_text_from_feild.dart';
import 'package:docapp/core/widgets/custom_Button.dart';
import 'package:docapp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

bool obscureText = true;
GlobalKey<FormState> formkey = GlobalKey();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController phoneNumberController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  content:
                      Text(" thank you for Joing Us \nHope You will be happy!"),
                );
              });
        } else if (state is SignUpFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        final cubit = BlocProvider.of<SignUpCubit>(context);
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).CreateAcount,
                        style: Fontstyles.font24PrimartColor700weight,
                      ),
                      verticalspace(8),
                      Text(S.of(context).SignUpPageText,
                          style: Fontstyles.font15grey400weight),
                      verticalspace(36),
                      Form(
                        key: formkey,
                        child: Column(children: [
                          AppTextFromField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Name is Required';
                              }
                              return null;
                            },
                            controller: nameController,
                            hintText: S.of(context).name,
                          ),
                          verticalspace(16),
                          AppTextFromField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email is Required';
                              } else if (!value.contains("@")) {
                                return 'Enter Correct Email like *****@example.com';
                              }
                              return null;
                            },
                            controller: emailController,
                            hintText: S.of(context).email,
                          ),
                          verticalspace(16),
                          AppTextFromField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email is Required';
                              } else if (!value.startsWith("010") &&
                                  !value.startsWith("011") &&
                                  !value.startsWith("012") &&
                                  !value.startsWith("015")) {
                                return 'Enter Correct Number, Start with 01(0,1,2,5)';
                              } else if (value.length < 11) {
                                return 'Minimum 11 Numbers';
                              }
                              return null;
                            },
                            controller: phoneNumberController,
                            hintText: S.of(context).phone,
                          ),
                          verticalspace(16),
                          AppTextFromField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'password is Required';
                              } else if (value.length < 8) {
                                return 'Minimum 8 characters';
                              }
                              return null;
                            },
                            controller: passwordController,
                            hintText: S.of(context).password,
                            obscureText: obscureText,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              child: Icon(
                                  color: ColorsManger.primaryColor,
                                  obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                            ),
                          ),
                          verticalspace(16),
                          AppTextFromField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'You Should Confirm the Password.';
                              } else if (value != passwordController.text) {
                                return 'Passwords do not match';
                              }
                              return null;
                            },
                            controller: confirmPasswordController,
                            hintText: S.of(context).comfirmPassword,
                            obscureText: obscureText,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              child: Icon(
                                  color: ColorsManger.primaryColor,
                                  obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                            ),
                          ),
                          verticalspace(25),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              S.of(context).Forgetpassword,
                              style: Fontstyles.font12primaryColor400weight,
                            ),
                          ),
                          verticalspace(32),
                          state is SignUpLoading
                              ? const CustomLoadingIndicator()
                              : CustomButton(
                                  text: S.of(context).CreateAcount,
                                  onPressed: () {
                                    if (formkey.currentState!.validate()) {
                                      cubit.doSigningUp(
                                          name: nameController.text,
                                          email: emailController.text,
                                          phone: phoneNumberController.text,
                                          passwword: passwordController.text,
                                          confirmingPassword:
                                              confirmPasswordController.text);
                                    }
                                  }),
                          verticalspace(32),
                        ]),
                      ),
                    ]),
              ),
            ),
          ),
        );
      },
    );
  }
}
