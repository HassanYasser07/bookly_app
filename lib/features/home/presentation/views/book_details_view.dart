import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book_model/book_model.dart';
class BookDetailsView extends StatefulWidget {
  const BookDetailsView({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;


  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {


  @override
  void initState(){
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(category: widget.bookModel.volumeInfo.categories![0]);


  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:   CustomScrollView(
        slivers:  [
          SliverFillRemaining(
            hasScrollBody: false,
            child:  SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const SizedBox(height: 5,),
                    const CustomBookDetailsAppBar(),
                    const SizedBox(height: 40,),
                    BookDetailsSection(bookModel: widget.bookModel,),
                    const SizedBox(height: 50,),
                    const SimilarBooksSection(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
