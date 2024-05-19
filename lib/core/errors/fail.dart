import 'package:dio/dio.dart';

abstract class Failure {
  final String errormsg;

  const Failure(this.errormsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errormsg);

  factory ServerFailure.fromdioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with API server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with API server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with API server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to API server was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with API server');
      case DioExceptionType.unknown:
        return ServerFailure('Unknown error with API server');
    }
  }

  factory ServerFailure.fromResponse(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401) {
      return ServerFailure(response['error']['message']);
    } else if (statuscode == 404) {
      return ServerFailure(
          'Your request was not found, please try again later.');
    } else if (statuscode == 500) {
      return ServerFailure('There was a server error, please try again later.');
    } else {
      return ServerFailure('opps there was an error,please try again ');
    }
  }
}
