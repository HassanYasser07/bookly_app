import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future <void> FetchFeatureBooks()async{
    emit(FeaturedBooksLoading());
  var result =await homeRepo.fetchFeatureBooks();
  result.fold(
          (failure){
            emit(FeaturedBooksFailure(failure.errMessage));
          },
          (success) {
            emit(FeaturedBooksSuccess(success));
          });

  }
}
