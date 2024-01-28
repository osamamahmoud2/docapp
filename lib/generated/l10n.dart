// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome Back`
  String get WelcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'WelcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `We're excited to have you back, can't wait to see what you've been up to since you last logged in.`
  String get LoginPageText {
    return Intl.message(
      'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
      name: 'LoginPageText',
      desc: '',
      args: [],
    );
  }

  /// `Docdoc`
  String get AppName {
    return Intl.message(
      'Docdoc',
      name: 'AppName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `By logging, you agree to our`
  String get Byloggingyouagreetoour {
    return Intl.message(
      'By logging, you agree to our',
      name: 'Byloggingyouagreetoour',
      desc: '',
      args: [],
    );
  }

  /// ` Terms & Conditions`
  String get TermsConditions {
    return Intl.message(
      ' Terms & Conditions',
      name: 'TermsConditions',
      desc: '',
      args: [],
    );
  }

  /// ` and `
  String get and {
    return Intl.message(
      ' and ',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `PrivacyPolicy.`
  String get PrivacyPolicy {
    return Intl.message(
      'PrivacyPolicy.',
      name: 'PrivacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Do not have an account yet?`
  String get Donothaveanaccountyet {
    return Intl.message(
      'Do not have an account yet?',
      name: 'Donothaveanaccountyet',
      desc: '',
      args: [],
    );
  }

  /// ` Sign Up`
  String get SignUp {
    return Intl.message(
      ' Sign Up',
      name: 'SignUp',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get Login {
    return Intl.message(
      'Login',
      name: 'Login',
      desc: '',
      args: [],
    );
  }

  /// `Name `
  String get name {
    return Intl.message(
      'Name ',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `phone Number`
  String get phone {
    return Intl.message(
      'phone Number',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `password confirmation`
  String get comfirmPassword {
    return Intl.message(
      'password confirmation',
      name: 'comfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forget password`
  String get Forgetpassword {
    return Intl.message(
      'Forget password',
      name: 'Forgetpassword',
      desc: '',
      args: [],
    );
  }

  /// `Best Doctor Appointment App`
  String get BestDoctorAppointment {
    return Intl.message(
      'Best Doctor Appointment App',
      name: 'BestDoctorAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.`
  String get onBoardinAppDescription {
    return Intl.message(
      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
      name: 'onBoardinAppDescription',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get onBoardingButtonText {
    return Intl.message(
      'Get Started',
      name: 'onBoardingButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get CreateAcount {
    return Intl.message(
      'Create Account',
      name: 'CreateAcount',
      desc: '',
      args: [],
    );
  }

  /// `Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!`
  String get SignUpPageText {
    return Intl.message(
      'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
      name: 'SignUpPageText',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
