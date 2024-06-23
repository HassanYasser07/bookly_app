import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        Expanded(
      child: CustomScrollView(
         slivers: [
         SliverToBoxAdapter(
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FeaturedBooksListView(),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 33.0,),
            child: Text(
              'Best Seller',
              style: Styles.textStyle18,),
          ),
          SizedBox(height: 30,),
        ],
      ),
      ),
         SliverFillRemaining(
      child: BestSellerListView(),
      )
      ],
      ),
    ),
      ],
    );
  }
}


