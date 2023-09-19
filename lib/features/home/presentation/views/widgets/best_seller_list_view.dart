
import 'package:flutter/material.dart';

import 'best_saler_list_view_item.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context,index){
        return const BestSellerListViewItem();
      },
    );
  }
}
