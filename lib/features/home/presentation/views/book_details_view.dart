import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets_image.dart';
class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomBookDetailsAppBar(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: width *.17),
              child: AspectRatio(
                aspectRatio: 2.5/4,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image:AssetImage(AssetsData.test)
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
