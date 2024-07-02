import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custombook_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/style.dart';
import 'book_rating_item.dart';


class BestSellerListViewItem extends StatelessWidget {

  const BestSellerListViewItem({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){GoRouter.of(context).push(Routes.kBoolDetailsView,extra: bookModel);},
      child: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,),
              SizedBox(width: MediaQuery.of(context).size.width*.05,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width *.5,
                      child:  Text(
                        bookModel.volumeInfo.title!,
                        style: Styles.textStyle20,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 3,),
                     Text(bookModel.volumeInfo.authors![0],style: Styles.textStyle14,),
                    const SizedBox(height: 3,),
                    Row(
                      children: [
                        Text('Free',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),),
                        const Spacer(),
                         BookRating(
                          rating:bookModel.volumeInfo.averageRating?? 0 ,
                          count:bookModel.volumeInfo.ratingsCount?? 0 ,
                        )
                      ],),



                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}