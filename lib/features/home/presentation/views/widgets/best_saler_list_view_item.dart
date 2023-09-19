import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_image.dart';
import '../../../../../core/utils/style.dart';
class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,right: 30),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width *.5,
                  child: Text(
                    'Harry Potter and the goblet of fire ',
                    style: Styles.textStyle20,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(height: 3,),
                Text('J.k. Rowling',style: Styles.textStyle14,),
                SizedBox(height: 3,),
                Row(
                  children: [
                    Text('19.99',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),),
                  ],),



              ],
            ),

          ],
        ),
      ),
    );
  }
}