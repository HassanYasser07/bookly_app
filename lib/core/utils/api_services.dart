import 'package:dio/dio.dart';

class ApiServices{
  final _baseUrl='https://www.googleapis.com/books/v1/';
  final Dio dio;
  Future<Map<String,dynamic>> git({required String endPoint })async{
 var responce=  await dio.get('$_baseUrl$endPoint');
 return responce.data;
  }


  ApiServices(this.dio);
}