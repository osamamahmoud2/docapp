import 'dart:async';
import 'dart:io';

class Failures {
  final String errorMsg;

  Failures(this.errorMsg);
}

class ServerFailure extends Failures {
  ServerFailure(super.errorMsg);
  factory ServerFailure.fromRequest(dynamic exception) {
    if (exception is SocketException) {
      return ServerFailure("No Internet connection!");
    } else if (exception is FormatException) {
      return ServerFailure("Invalid input!");
    } else if (exception is TimeoutException) {
      return ServerFailure("can't connect to the server right now!");
    } else {
      return ServerFailure("Opps, There Was an error Please try again later!.");
    }
  }
}
