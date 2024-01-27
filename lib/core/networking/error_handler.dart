import 'dart:io';

class Failures {
  final String errorMsg;

  Failures(this.errorMsg);
}

class ServerFailure extends Failures {
  ServerFailure(super.errorMsg);
}
