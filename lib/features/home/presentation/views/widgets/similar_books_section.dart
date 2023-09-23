import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,

            child: Text('You can also like',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),)),
        const SizedBox(height: 16,),
        const SimilarBooksListView()
      ],
    );
  }
}
