import 'package:dio/dio.dart';

class ApiServices{
  final  _baseUrl= 'https://www.googleapis.com/books/v1/';
  Dio _dio=Dio();
  ApiServices(this._dio);
  Future<Map<String,dynamic>> get({required String endPoint})async{
   var response= await _dio.get('$_baseUrl$endPoint');
   return response.data;
    
  }

}