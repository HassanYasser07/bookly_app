import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/Functions/launch_url.dart';
import '../../../../../core/widgets/Custom_button.dart';
class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(child: CustomButton(
          onPressed: (){},
          backgroundColor: Colors.white,
          text: 'Free',
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(16),
            topLeft: Radius.circular(16),
          ),
          textColor: Colors.black,
        )),
        Expanded(child: CustomButton(
          backgroundColor: const Color(0xffEF8262),
          onPressed: (){
            launchCustomUrl(context,bookModel.volumeInfo.previewLink!);

    },
          text: getText(bookModel),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          textColor: Colors.black,
        )),
      ],
    );
  }
}

String getText(BookModel bookModel){
  if(bookModel.volumeInfo.previewLink== null){
    return 'Not Available';
  }else{
    return 'preview';
  }
}