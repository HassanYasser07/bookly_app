import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../../../../core/utils/assets_image.dart';
import 'custem_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Text('Best Seller',style: Styles.textStyle18,),
        ),
        BestSellerListViewItem()



      ],
    );
  }
}


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
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
              children: [
                Text('data'),
                Text('data'),


              ],
            ),

          ],
        ),
      ),
    );
  }
}
