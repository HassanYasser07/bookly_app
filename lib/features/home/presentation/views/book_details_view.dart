import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';


class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 5,),
              const CustomBookDetailsAppBar(),
          const SizedBox(height: 40,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width *.2),
            child: AspectRatio(
              aspectRatio: 2.2/3.6,
              child: Container(

                decoration: const BoxDecoration(
                  color: Colors.cyan,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image:AssetImage('assets/images/female.png',)
                  ),
                ),
              ),
            ),
          ),
              const SizedBox(height: 43,),
              Text('The Jungle Book',style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),),
              const SizedBox(height: 6,),
              Opacity(
                opacity: .7,
                  child: Text('Rudyard Kioling',style: Styles.textStyle18.copyWith(

                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w300,
                  ),)),
              const SizedBox(height: 18,),
              const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
              const SizedBox(height: 37,),
              const BooksAction(),
              const SizedBox(height: 50,),
              Align(
                alignment: Alignment.centerLeft,

                  child: Text('You can also like',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),)),
              const SizedBox(height: 16,),
              const Expanded(child: SimilarBooksListView())

            ],
          ),
        ),
      ),
    );
  }
}
