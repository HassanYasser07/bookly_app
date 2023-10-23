import 'package:dio/dio.dart';

abstract class Failure{
  final String errMessage;

  Failure(this.errMessage);
}
class ServerFailure extends Failure{
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException){
    switch(dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.connectionError:
        if (dioException.message!.contains('SocketException')) {
          return  ServerFailure('No Internet Connection');
        }
        break;
        case DioExceptionType.unknown:
        return  ServerFailure('Oops There was an Error, Please try again');
    }
    return ServerFailure('Unexpected error');
  }
  factory ServerFailure.fromResponse(int stateCode, dynamic response){
    if (stateCode==400 || stateCode==401 || stateCode==403){
      return ServerFailure(response['error']['message']);
    }else if(stateCode==404){
      return ServerFailure('Your request not found ,  please try again ');

    } else if(stateCode==500){
      return ServerFailure('Internet server error,  please try again');
      
    } else{
      return ServerFailure('There was an error , please try again');
    }
  }
}