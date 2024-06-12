import 'package:dio/dio.dart';

class ApiServices{
  final  _baseUrl= 'https://www.googleapis.com/books/v1/';
  Dio dio=Dio();
  Future<Map<String,dynamic>> get(String endPoint)async{
   var response= await dio.get('$_baseUrl$endPoint');
   return response.data;
    
  }

}