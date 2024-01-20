import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/style.dart';
class BookRating extends StatelessWidget {
  const BookRating({Key? key,  this.mainAxisAlignment=MainAxisAlignment.start, required this.Rating, required this.count}) : super(key: key);
final MainAxisAlignment mainAxisAlignment;
  @override
  final int Rating;
  final int count;

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:mainAxisAlignment ,
      children: [
        const Icon(FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),),
        const SizedBox(width: 6.3,),
         Text(Rating.toString(),style: Styles.textStyle14,),
        const SizedBox(width: 5,),
        Text('($count)'.toString(),style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),),

      ],
    );
  }
}