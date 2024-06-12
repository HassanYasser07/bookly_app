import 'package:bookly_app/core/errrs/failure.dart';
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
      var data=await  apiServices.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming');
      List<BookModel> books=[];

          for(var item in data['items'] ){
            books.add(BookModel.fromJson(item));
      }
      return Right(books);

    }  catch(e){
      return Left(Failure());

    }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}