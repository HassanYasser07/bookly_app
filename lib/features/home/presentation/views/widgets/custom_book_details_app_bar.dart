import 'package:flutter/material.dart';
class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(child: const Icon(Icons.close)),
        const Spacer(),
        GestureDetector(child: const Icon(Icons.add_shopping_cart_outlined))

      ],
    );
  }
}
