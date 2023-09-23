import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:   CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child:  SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    CustomBookDetailsAppBar(),
                    SizedBox(height: 40,),
                    BookDetailsSection(),
                    SizedBox(height: 50,),
                    SimilarBooksSection()
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
