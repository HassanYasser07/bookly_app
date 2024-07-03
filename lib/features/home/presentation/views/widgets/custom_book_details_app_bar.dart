import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: (){GoRouter.of(context).pop();},
            child: const Icon(Icons.close)),
        const Spacer(),
        GestureDetector(child: const Icon(Icons.add_shopping_cart_outlined))

      ],
    );
  }
}
