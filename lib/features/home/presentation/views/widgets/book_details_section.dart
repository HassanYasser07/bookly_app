import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'book_rating_item.dart';
import 'books_action.dart';
class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return Column(
      children: [
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
        const BookRating(
          rating: 5,
          count: 12,
          mainAxisAlignment: MainAxisAlignment.center,),
        const SizedBox(height: 37,),
        const BooksAction(),
      ],
    );
  }
}
