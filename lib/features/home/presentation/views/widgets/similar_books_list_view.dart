import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'custombook_item.dart';
class SimilarBooksListView extends StatelessWidget {

  const SimilarBooksListView({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height *.15,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 1,
        itemBuilder: (context,index){
          return SizedBox(
            height: MediaQuery.of(context).size.height *.15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return  Padding(
                    padding: EdgeInsets.all(1.0),
                    child:  CustomBookImage(imageUrl: '',),
                  );
                }),
          );
        },
      ),
    );
  }
}

