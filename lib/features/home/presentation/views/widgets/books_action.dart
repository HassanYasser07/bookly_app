import 'package:flutter/material.dart';

import '../../../../../core/widgets/Custom_button.dart';
class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomButton(
          backgroundColor: Colors.white,
          text: '99.99',
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            topLeft: Radius.circular(16),
          ),
          textColor: Colors.black,
        )),
        Expanded(child: CustomButton(
          backgroundColor: Color(0xffEF8262),
          text: '99.99',
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          textColor: Colors.black,
        )),
      ],
    );
  }
}
