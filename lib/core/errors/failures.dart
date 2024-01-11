import 'package:dio/dio.dart';

abstract class Failure {
  final String msg;

  const Failure(this.msg);
}

class ServerFailure extends Failure {
  ServerFailure(super.msg);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          "Connection timeout with Api",
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          "Send timeout with Api",
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          "Receive timeout with Api",
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
          "Bad Certificate",
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(
          "Request was Cancelled",
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
          "Api Connection Error",
        );
      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure(
            "No Internet Connection",
          );
        }
        return ServerFailure(
          "Unexpected Error",
        );
      default:
        return ServerFailure(
          "Unknown Error",
        );
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
        response["error"]['message'],
      );
    } else if (statusCode == 404) {
      return ServerFailure(
        "Request Not Found",
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        "Internal Server Error",
      );
    } else {
      return ServerFailure(
        "Unexpected Error",
      );
    }
  }
}
