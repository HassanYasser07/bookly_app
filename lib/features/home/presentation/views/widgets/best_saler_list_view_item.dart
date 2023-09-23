import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custombook_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/style.dart';
import 'book_rating_item.dart';


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){GoRouter.of(context).push(Routes.kBoolDetailsView);},
      child: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
             const CustomBookItem(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width *.5,
                      child: const Text(
                        'Harry Potter and the goblet of fire ',
                        style: Styles.textStyle20,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 3,),
                    const Text('J.k. Rowling',style: Styles.textStyle14,),
                    const SizedBox(height: 3,),
                    Row(
                      children: [
                        Text('19.99',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),),
                        const Spacer(),
                        const BookRating()
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