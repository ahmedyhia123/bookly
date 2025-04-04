import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errorMessage: 'Connection Timeout with the server',
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send Timeout with the server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive Timeout with the server');

      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'Bad Certificate with the server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          errorMessage: 'Request to API server was cancelled',
        );
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'No Internet connection');
      case DioExceptionType.unknown:
        return ServerFailure(
          errorMessage: dioError.message ?? 'Something went wrong',
        );
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
        errorMessage: response['error']['message'] ?? 'Something went wrong',
      );
    } else if (statusCode == 404) {
      return ServerFailure(errorMessage: 'Requested data not found');
    } else if (statusCode == 500) {
      return ServerFailure(errorMessage: 'Internal server error');
    } else {
      return ServerFailure(errorMessage: 'Something went wrong');
    }
  }
}
