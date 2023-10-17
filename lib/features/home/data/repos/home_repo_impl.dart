import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async{
    try{
      var data=await apiServices.git(endPoint: 'volumes? Filtering=free-ebooks&Sorting=newest &q=subject:Programming');
      List<BookModel> books=[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);

    }on Exception catch(e){
      return left(ServerFailure());
    }
    

  }


  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}