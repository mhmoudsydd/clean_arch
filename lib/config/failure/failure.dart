import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  Failure(this.message);  
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

factory  ServerFailure.fromDioError(DioException e){
  switch(e.type){
    case DioExceptionType.connectionTimeout:
      return ServerFailure('Connection timeout with api server');
    case DioExceptionType.sendTimeout:
      return ServerFailure('Send timeout with api server');
    case DioExceptionType.receiveTimeout:
      return ServerFailure('Receive timeout with api server');
    case DioExceptionType.badCertificate:
      return ServerFailure('Bad certificate with api server');
    case DioExceptionType.badResponse:
      return ServerFailure.fromBadRequest(e.response!.statusCode!, e.response!.data!);
    case DioExceptionType.cancel:
      return ServerFailure('Request to API server was cancelled');
    case DioExceptionType.connectionError:
      return ServerFailure('Connection error with API server');
    case DioExceptionType.unknown:
      return ServerFailure('Opps There was an error ,Please try again');
  }
}

factory ServerFailure.fromBadRequest(int statusCode,Response response){
  if(statusCode==400 || statusCode==401 || statusCode==403){
    return ServerFailure(response.data['error']['message']);
  }else if(statusCode==404){
    return ServerFailure('Your request not found, Please try later');
  }else if(statusCode==500){
    return ServerFailure('Internal Server error, Please try later');
  }else{
    return ServerFailure('Opps There was an error ,Please try again');
  }

  }
}

