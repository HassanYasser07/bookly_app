import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo{
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async{
    try{
      var data=await apiServices.git(endPoint: 'volumes? Filtering=free-ebooks&Sorting=newest &q=subject:computer science');
      List<BookModel> books=[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);

    }on Exception catch(e){
       if(e is DioException){
         return left(ServerFailure.fromDioException(e));
      }
       return left(ServerFailure(e.toString()));
    }}

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async{
    try{
      var data=await apiServices.git(endPoint: 'volumes? Filtering=free-ebooks&Sorting=newest &q=subject:Programming');
      List<BookModel> books=[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);

    }on Exception catch(e){
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async{
    try{
      var data=await apiServices.git(endPoint: 'volumes? Filtering=free-ebooks&sorting=relevance &Sorting=newest &q=subject:Programming');
      List<BookModel> books=[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);

    }on Exception catch(e){
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }

  }
}