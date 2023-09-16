import 'package:flutter/material.dart';

import 'custm_list_view_item.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height *.29,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){

              return const CustomListViewItem();
            }),
      ),
    );
  }
}