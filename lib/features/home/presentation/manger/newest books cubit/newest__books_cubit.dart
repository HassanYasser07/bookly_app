import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/book_model.dart';

part 'newest__books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  @override
  Future<void> FetchNewestBooks() async{
    emit(NewestBooksLoading());
   var result=await homeRepo.fetchNewestBooks();
   result.fold(
           (failure) {
             emit(NewestBooksFailure(failure.errMessage));
           },
           (books){
             emit(NewestBooksSuccess(books));
           });


  }

}
